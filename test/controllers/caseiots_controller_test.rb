require "test_helper"

class CaseiotsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get caseiots_create_url
    assert_response :success
  end

  test "should get show" do
    get caseiots_show_url
    assert_response :success
  end

  test "should get index" do
    get caseiots_index_url
    assert_response :success
  end

  test "should get update" do
    get caseiots_update_url
    assert_response :success
  end

  test "should get destroy" do
    get caseiots_destroy_url
    assert_response :success
  end
end
