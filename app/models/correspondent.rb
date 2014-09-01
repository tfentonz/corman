class Correspondent < ActiveRecord::Base
  self.table_name = 'corman_correspondents'

  STATES = %w(ACT NSW NT QLD SA TAS VIC WA)

  has_many :correspondences

  validates :name, length: { maximum: 60 }, presence: true
  validates :street, length: { maximum: 60 }
  validates :town, length: { maximum: 40 }
  validates :state, inclusion: { in: STATES }
  validates :postcode, numericality: true
  validates :description, length: { maximum: 60 }

  def description
    self[:description].eql?('<null>') ? nil : self[:description]
  end

  def street
    self[:street].eql?('<null>') ? nil : self[:street]
  end

  def town
    self[:town].eql?('<null>') ? nil : self[:town]
  end

  def state
    self[:state].eql?('<nu') ? nil : self[:state]
  end

  def postcode
    self[:postcode].eql?(0) ? nil : self[:postcode]
  end
end
