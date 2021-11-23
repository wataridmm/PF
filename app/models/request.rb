class Request < ApplicationRecord
    belongs_to :worker
    has_many :request_details
    belongs_to :request
    belongs_to :item
end
