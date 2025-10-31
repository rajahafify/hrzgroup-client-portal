require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "requires unique email" do
    duplicate = users(:superadmin).dup
    assert_not duplicate.valid?
    assert_includes duplicate.errors[:email], "has already been taken"
  end

  test "requires role" do
    user = User.new(email: "new@example.com", password: "password")
    user.role = nil
    assert_not user.valid?
    assert_includes user.errors[:role], "can't be blank"
  end
end
