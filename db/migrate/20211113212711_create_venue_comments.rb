class CreateVenueComments < ActiveRecord::Migration[5.2]
  def change
    create_table :venue_comments do |t|

      t.timestamps
    end
  end
end
