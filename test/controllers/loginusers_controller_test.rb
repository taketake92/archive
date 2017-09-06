require 'test_helper'

class LoginusersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get loginusers_index_url
    assert_response :success
  end

  test "should get show" do
    get loginusers_show_url
    assert_response :success
  end

  test "should get new" do
    get loginusers_new_url
    assert_response :success
  end

  test "should get create" do
    get loginusers_create_url
    assert_response :success
  end

end
