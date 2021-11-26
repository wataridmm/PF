class Item < ApplicationRecord

  has_many :request_details
  has_many :item_stocks


  enum status: {運営: 0, ケータリング: 1, その他: 2}
  
  validates :name, presence: true

end
