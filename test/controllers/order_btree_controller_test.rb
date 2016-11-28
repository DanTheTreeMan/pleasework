require 'test_helper'

class OrderBtreeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get order_btree_new_url
    assert_response :success
  end

end
