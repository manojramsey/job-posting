require 'test_helper'

class EmployerDashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employer_dashboard_index_url
    assert_response :success
  end

end
