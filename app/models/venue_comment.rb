class VenueComment < ApplicationRecord

  belongs_to :customer
  belongs_to :worker, optional: true
  belongs_to :venue

  validates :venue_id, presence: true
end
