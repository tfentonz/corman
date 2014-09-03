class CorrespondencesKeyword < ActiveRecord::Base
  self.table_name = 'corman_correspondences_keywords'

  belongs_to :correspondence
  belongs_to :keyword
end
