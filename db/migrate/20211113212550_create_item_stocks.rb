class CreateItemStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :item_stocks do |t|

      t.timestamps
    end
  end
end
