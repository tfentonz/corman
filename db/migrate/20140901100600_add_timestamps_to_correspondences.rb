class AddTimestampsToCorrespondences < ActiveRecord::Migration
  def change
    change_table :corman_correspondences do |t|
      t.timestamps
    end
  end
end
