require "test_helper"

class ClientTest < ActiveSupport::TestCase
  test "is invalid without required attributes" do
    client = Client.new
    assert_not client.valid?
    assert_includes client.errors[:company_name], "can't be blank"
    assert_includes client.errors[:contact_no], "can't be blank"
    assert_includes client.errors[:contact_email], "can't be blank"
  end
end
