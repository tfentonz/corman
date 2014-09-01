class RenameOfficerToOfficers < ActiveRecord::Migration
  def change
    rename_table :corman_officer, :corman_officers
  end
end
