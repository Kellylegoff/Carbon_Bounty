require "test_helper"

class IotproductsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get iotproducts_create_url
    assert_response :success
  end

  test "should get show" do
    get iotproducts_show_url
    assert_response :success
  end

  test "should get index" do
    get iotproducts_index_url
    assert_response :success
  end

  test "should get update" do
    get iotproducts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get iotproducts_destroy_url
    assert_response :success
  end
end
