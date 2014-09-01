class Meeting < ActiveRecord::Base
  self.table_name = 'corman_meetings'

  has_many :correspondences

  validates :date, presence: true
  validates :description, length: { maximum: 45 }, presence: true
end
