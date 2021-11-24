class Request < ApplicationRecord
    belongs_to :worker
    has_many :request_details, dependent: :destroy

    accepts_nested_attributes_for :request_details, allow_destroy: true

    enum progress: {
    申請中: 0,
    承認: 1,
    却下: 2,
    }

end
