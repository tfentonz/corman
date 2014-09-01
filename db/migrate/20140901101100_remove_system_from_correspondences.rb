class RemoveSystemFromCorrespondences < ActiveRecord::Migration
  def change
    remove_column :corman_correspondences, :system, :string, limit: 3, after: :meeting_id
  end
end
