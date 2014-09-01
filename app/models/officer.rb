class Officer < ActiveRecord::Base
  self.table_name = 'corman_officers'

  has_many :correspondences

  validates :name, length: { maximum: 40 }, presence: true
  # TODO: email validation
  # validates :email, email: true
  validates :isgroup, inclusion: { in: %w(Y N) }, presence: true

  def email
    self[:email].eql?('<null>') ? nil : self[:email]
  end

  def mygroup
    self[:mygroup].eql?(0) ? nil : self[:mygroup]
  end

  def group_name
    Officer.where(id: mygroup).pluck(:name).first
  end

  def group?
    isgroup.eql?('Y')
  end
end
