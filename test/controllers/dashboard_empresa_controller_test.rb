require 'test_helper'

class DashboardEmpresaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_empresa_index_url
    assert_response :success
  end

end
