class Item < ApplicationRecord
  
  has_many :request_details, dependent: :destroy
  
  
  
  
end
