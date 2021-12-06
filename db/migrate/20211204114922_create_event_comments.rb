class CreateEventComments < ActiveRecord::Migration[5.2]
  def change
    create_table :event_comments do |t|


      t.integer "event_id", null: false
      t.integer "customer_id"
      t.text "comment", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.decimal "score", precision: 5, scale: 3

      t.timestamps
    end
  end
end
