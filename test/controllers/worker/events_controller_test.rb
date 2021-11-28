require 'test_helper'

class Worker::EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get worker_events_index_url
    assert_response :success
  end

  test "should get show" do
    get worker_events_show_url
    assert_response :success
  end

end
