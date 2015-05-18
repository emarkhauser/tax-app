require 'test_helper'

class IncomeTest < ActiveSupport::TestCase
	test "shouldn't save without required data" do
		income = Income.new
		assert_not income.valid?
		assert_equal [:date, :client_id], income.errors.keys
	end
end
