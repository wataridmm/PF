class Request < ApplicationRecord
    belongs_to :worker
    has_many :request_details, dependent: :destroy

    accepts_nested_attributes_for :request_details, allow_destroy: true
end
