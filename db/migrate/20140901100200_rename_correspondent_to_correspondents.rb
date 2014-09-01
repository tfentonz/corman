class RenameCorrespondentToCorrespondents < ActiveRecord::Migration
  def change
    rename_table :corman_correspondent, :corman_correspondents
  end
end
