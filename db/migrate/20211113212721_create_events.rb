class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|

      t.integer :venue_id, null: false
      t.integer :worker_id, default: 0
      t.string :name, null: false
      t.text :comment
      t.datetime :date, null: false
      t.timestamps
    end
  end
end
