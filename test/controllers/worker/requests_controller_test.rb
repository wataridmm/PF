require 'test_helper'

class Worker::RequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get worker_requests_new_url
    assert_response :success
  end

  test "should get index" do
    get worker_requests_index_url
    assert_response :success
  end

  test "should get show" do
    get worker_requests_show_url
    assert_response :success
  end

end
