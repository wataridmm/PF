class Venue < ApplicationRecord


  validates :name, presence: true
  validates :station, presence: true
  validates :status, presence: true

end
