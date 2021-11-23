class Item < ApplicationRecord

  has_many :request_details
  has_many :item_stocks
  

end
