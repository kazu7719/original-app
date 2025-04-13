require "test_helper"

class CalenderControllerTest < ActionDispatch::IntegrationTest
  test "should get events" do
    get calender_events_url
    assert_response :success
  end
end
