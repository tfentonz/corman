class Type < ActiveRecord::Base
  self.table_name = 'corman_types'

  belongs_to :correspondence

  validates :description, length: { maximum: 60 }, presence: true
end
