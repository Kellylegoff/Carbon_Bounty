require "test_helper"

class CustomerusecaseControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get customerusecase_create_url
    assert_response :success
  end

  test "should get show" do
    get customerusecase_show_url
    assert_response :success
  end

  test "should get index" do
    get customerusecase_index_url
    assert_response :success
  end

  test "should get update" do
    get customerusecase_update_url
    assert_response :success
  end

  test "should get destroy" do
    get customerusecase_destroy_url
    assert_response :success
  end
end
