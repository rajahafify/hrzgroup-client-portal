require "test_helper"

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:acme)
    @admin = users(:admin)
    @client_user = users(:client)
  end

  test "admin can access index" do
    log_in_as(@admin)
    get clients_url
    assert_response :success
  end

  test "client cannot access index" do
    log_in_as(@client_user)
    get clients_url
    assert_redirected_to root_path
  end

  private

  def log_in_as(user)
    post login_url, params: { email: user.email, password: "password" }
  end
end
