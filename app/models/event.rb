class Event < ApplicationRecord
  belongs_to :venue
  has_many :requests
  belongs_to :worker

  validates :venue_id, presence: true
  validates :name, presence: true
  validates :date, presence: true

end
