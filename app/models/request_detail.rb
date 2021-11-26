class RequestDetail < ApplicationRecord
  belongs_to :request
  belongs_to :item


  validates :request_id, presence :true
  validates :item_id, presence :true
  validates :amount, presence :true


end
