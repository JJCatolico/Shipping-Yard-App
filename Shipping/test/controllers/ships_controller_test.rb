require 'test_helper'

class ShipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ships_index_url
    assert_response :success
  end

  test "should get show" do
    get ships_show_url
    assert_response :success
  end

  test "should get create" do
    get ships_create_url
    assert_response :success
  end

  test "should get destroy" do
    get ships_destroy_url
    assert_response :success
  end

  test "should get update" do
    get ships_update_url
    assert_response :success
  end

end
