class AddTimestampsToCorrespondents < ActiveRecord::Migration
  def change
    change_table :corman_correspondents do |t|
      t.timestamps
    end
  end
end
