class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|

      t.integer :worker_id, null: false
      t.integer :status, null: false
      t.integer :venue_id
      t.timestamps
    end
  end
end
