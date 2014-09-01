class RenameCorrespondenceToCorrespondences < ActiveRecord::Migration
  def change
    rename_table :corman_correspondence, :corman_correspondences
  end
end
