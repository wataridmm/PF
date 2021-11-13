class CreateVenueComments < ActiveRecord::Migration[5.2]
  def change
    create_table :venue_comments do |t|

      t.integer :customer_id
      t.integer :worker_id
      t.integer :venue_id, null: false
      t.text :comment, null: false

      t.timestamps
    end
  end
end
