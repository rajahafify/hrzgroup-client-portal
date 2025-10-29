require "test_helper"

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_record = clients(:hrz)
    @admin = users(:admin)
    post session_url, params: { email: @admin.email, password: "Password1!" }
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should create client" do
    assert_difference("Client.count") do
      post clients_url, params: { client: { company_name: "New Corp", contact_email: "new@corp.test", contact_no: "+1-555-0199" } }
    end
  end

  test "client users cannot access admin actions" do
    delete session_url
    client_user = users(:client)
    post session_url, params: { email: client_user.email, password: "Password1!" }

    get new_client_url
    assert_redirected_to root_path
  end
end
