class VenueComment < ApplicationRecord

  belongs_to :customer
  belongs_to :worker
  belongs_to :venue
end
