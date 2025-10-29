require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "roles enum" do
    user = User.new(email: "role@test", password: "Password1!", role: :admin)
    assert user.admin?
  end

  test "requires email" do
    user = User.new(password: "Password1!", role: :client)
    refute user.valid?
  end
end
