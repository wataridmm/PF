class Event < ApplicationRecord
  belongs_to :venue
  has_many :requests
  belongs_to :worker, optional: true
  has_many :event_comments

  validates :venue_id, presence: true
  validates :name, presence: true
  validates :date, presence: true

end
