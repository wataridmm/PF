class Request < ApplicationRecord
    belongs_to :worker
    has_many :request_details, dependent: :destroy
end
