class RenameKeywordIndexToCorrespondencesKeywords < ActiveRecord::Migration
  def change
    rename_table :corman_keyword_index, :corman_correspondences_keywords
  end
end
