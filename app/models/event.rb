class Event < ApplicationRecord
  belongs_to :venue
  has_many :requests

  validates :venue_id, presence :true
  validates :name, presence :true
  validates :datem, presence :true

end
