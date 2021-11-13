class CreateRequestDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :request_details do |t|

      t.integer :request_id, null: false
      t.integer :worker_id, null: false
      t.integer :item_id, null: false
      t.integer :venue_id
      t.integer :amount, null: false


      t.timestamps
    end
  end
end
