class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|

      t.integer :prefecture_id, null: false
      t.integer :image_id, null: false
      t.string :name, null: false
      t.text :introduction, null: false
      t.string :station, null: false
      t.string :status
      t.boolean :is_active, null: false

      t.timestamps
    end
  end
end
