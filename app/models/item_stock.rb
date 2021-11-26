class ItemStock < ApplicationRecord
  belongs_to :item
  
  
  validates :item_id, presence :true
  validates :stock, presence :true
  
end
