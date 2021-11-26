class Request < ApplicationRecord
    belongs_to :worker
    has_many :request_details, dependent: :destroy
    belongs_to :event
    accepts_nested_attributes_for :request_details, allow_destroy: true

    enum status: {申請中: 0, 承認: 1, 却下: 2, キャンセル: 3, 戻り: 4}
    
    
    def organaize_item_stock_amount(status)
        if status == 1
          request_details.each do |request_detail|
           item_stock = ItemStock.find_by(item_id: request_detail.item_id)
           item_stock.update(stock: item_stock.stock - request_detail.amount)
          end

        elsif status == 4
           request_details.each do |request_detail|
            item_stock = ItemStock.find_by(item_id: request_detail.item_id)
            item_stock.update(stock: item_stock.stock + request_detail.amount)
          end

        end
    end
    
    def wday
        event.date.wday
    end
    
    
    validates :worker_id, presence :true
    validates :status, presence :true
    

end
