class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures do |t|

      t.string :name, null: false
      t.string :slug, null: false


      t.timestamps
    end
  end
end
