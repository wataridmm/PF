class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|

      t.integer :worker_id, null: false
      t.integer :status, null: false, default: 0, limit: 1
      t.integer :venue_id
      t.integer :request_detail_id
      t.integer :event_id
      t.timestamps
    end
  end
end
