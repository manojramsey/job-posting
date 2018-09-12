require 'test_helper'

class ApplicantDashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get applicant_dashboard_index_url
    assert_response :success
  end

end
