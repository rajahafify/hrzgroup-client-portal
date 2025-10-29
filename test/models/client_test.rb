require "test_helper"

class ClientTest < ActiveSupport::TestCase
  test "valid client" do
    client = Client.new(company_name: "Valid Co", contact_no: "+1-555-0123", contact_email: "valid@example.test")
    assert client.valid?
  end

  test "invalid without email" do
    client = Client.new(company_name: "Valid Co", contact_no: "+1-555-0123")
    refute client.valid?
  end
end
