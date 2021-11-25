class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string :name, null: false
      t.text :comment
      t.integer :team
      t.boolean :is_active, null: false, default: true



      t.timestamps
    end
  end
end
