class RenameTypeToTypes < ActiveRecord::Migration
  def change
    rename_table :corman_type, :corman_types
  end
end
