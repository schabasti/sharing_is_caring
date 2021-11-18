require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get my_cars" do
    get profiles_my_cars_url
    assert_response :success
  end

end
