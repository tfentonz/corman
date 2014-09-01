class AddTimestampsToOfficers < ActiveRecord::Migration
  def change
    change_table :corman_officers do |t|
      t.timestamps
    end
  end
end
