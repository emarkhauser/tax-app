require 'test_helper'

class ClientTest < ActiveSupport::TestCase
	test "shouldn't save without client name" do
		client = Client.new
		assert_not client.valid?
	end
end
