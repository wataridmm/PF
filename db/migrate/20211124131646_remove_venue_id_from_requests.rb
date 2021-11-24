class RemoveVenueIdFromRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :venue_id, :integer
  end
end
