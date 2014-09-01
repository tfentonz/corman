class Correspondence < ActiveRecord::Base
  self.table_name = 'corman_correspondences'

  default_scope { where('id <> 0') }

  belongs_to :correspondent
  has_and_belongs_to_many :keywords
  belongs_to :meeting
  belongs_to :officer
  belongs_to :type

  def reference
    self[:reference].eql?('<null>') ? nil : self[:reference]
  end

  def correspondent_id
    self[:correspondent_id].eql?(0) ? nil : self[:correspondent_id]
  end

  def correspondent_name
    correspondent.name if correspondent
  end

  def meeting_id
    self[:meeting_id].eql?(0) ? nil : self[:meeting_id]
  end

  def meeting_description
    meeting.description if meeting
  end

  def officer_id
    self[:officer_id].eql?(0) ? nil : self[:officer_id]
  end

  def officer_name
    officer.name if officer
  end

  def type_id
    self[:type_id].eql?(0) ? nil : self[:type_id]
  end

  def type_description
    type.description if type
  end

  def details
    self[:details].eql?('<null>') ? nil : self[:details]
  end
end
