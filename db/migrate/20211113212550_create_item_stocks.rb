class CreateItemStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :item_stocks do |t|

      t.integer :item_id, null: false
      t.integer :stock, null: false
      t.integer :status



      t.timestamps
    end
  end
end
