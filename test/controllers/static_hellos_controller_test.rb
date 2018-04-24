require 'test_helper'

class StaticHellosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get static_hellos_index_url
    assert_response :success
  end

  test "should get create" do
    get static_hellos_create_url
    assert_response :success
  end

end
