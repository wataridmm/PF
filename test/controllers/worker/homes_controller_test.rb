require 'test_helper'

class Worker::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get worker_homes_top_url
    assert_response :success
  end

end
