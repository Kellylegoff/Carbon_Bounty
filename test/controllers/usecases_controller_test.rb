require "test_helper"

class UsecasesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get usecases_create_url
    assert_response :success
  end

  test "should get show" do
    get usecases_show_url
    assert_response :success
  end

  test "should get index" do
    get usecases_index_url
    assert_response :success
  end

  test "should get update" do
    get usecases_update_url
    assert_response :success
  end

  test "should get destroy" do
    get usecases_destroy_url
    assert_response :success
  end
end
