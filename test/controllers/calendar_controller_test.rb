require "test_helper"

class CalendarControllerTest < ActionDispatch::IntegrationTest
  test "should get events" do
    get calendar_events_url
    assert_response :success
  end
end
