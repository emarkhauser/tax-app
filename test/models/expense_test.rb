require 'test_helper'

class ExpenseTest < ActiveSupport::TestCase
	test "shouldn't save without required data" do
		expense = Expense.new
		assert_not expense.valid?
		assert_equal [:date, :note, :total, :category_id], expense.errors.keys
	end
end
