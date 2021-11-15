class Venue < ApplicationRecord


  validates :name, presence: true
  validates :station, presence: true
  validates :status, presence: true




  belongs_to :prefecture
end
