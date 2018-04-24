require 'test_helper'

class StaticHellosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/"
    assert_response :success
    assert_select "h1", "Hello World"

    get "/", headers: {"Accept": "application/json"}
    assert_response :success
    json = JSON.parse(response.body)
    assert_equal "Good Morning", json["message"]
  end

  test "should get create" do
    post "/"
    assert_response :success
    assert_select "h1", "Hello World"

    get "/", headers: {"Accept": "application/json"}
    assert_response :success
    json = JSON.parse(response.body)
    assert_equal "Good Morning", json["message"]
  end

end
