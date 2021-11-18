require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get my_rentings" do
    get profiles_my_rentings_url
    assert_response :success
  end

end
