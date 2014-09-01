class AddTimestampsToTypes < ActiveRecord::Migration
  def change
    change_table :corman_types do |t|
      t.timestamps
    end
  end
end
