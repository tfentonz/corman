class RenameCorrespondentsPostecode < ActiveRecord::Migration
  def change
    rename_column :corman_correspondents, :postecode, :postcode
  end
end
