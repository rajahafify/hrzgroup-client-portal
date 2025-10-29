require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:superadmin)
  end

  test "should get new" do
    get new_session_url
    assert_response :success
  end

  test "should sign in user" do
    post session_url, params: { email: @user.email, password: "Password1!" }
    assert_redirected_to root_path
  end

  test "should fail with invalid credentials" do
    post session_url, params: { email: @user.email, password: "wrong" }
    assert_response :unprocessable_entity
  end
end
