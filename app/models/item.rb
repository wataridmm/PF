class Item < ApplicationRecord

  has_many :request_details, dependent: :destroy
  has_many :item_stocks
  

end
