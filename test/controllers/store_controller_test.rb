require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "shoud get index" do
    get store_index_url
    assert_response :success
  end

  test "check number of html elements" do
    get store_index_url
    assert_response :success
    # grab all links inside nav with class side_nav and count if there are at least 4 of them
    assert_select 'nav.side_nav a', minimum: 4
    # check if there are exactly 3 products
    assert_select 'main ul.catalog li', 3
    assert_select 'h2', 'Programming Ruby 1.9'
  end

end
