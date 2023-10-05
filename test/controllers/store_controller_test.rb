require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "shoud get index" do
    get store_index_url
    assert_response :success
  end



end
