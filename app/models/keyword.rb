class Keyword < ActiveRecord::Base
  self.table_name = 'corman_keywords'

  has_many :correspondences_keywords
  has_many :correspondences, through: :correspondences_keywords
end
