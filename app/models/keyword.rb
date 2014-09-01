class Keyword < ActiveRecord::Base
  self.table_name = 'corman_keywords'

  has_and_belongs_to_many :correspondences
end
