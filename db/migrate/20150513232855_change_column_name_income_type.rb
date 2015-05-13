class ChangeColumnNameIncomeType < ActiveRecord::Migration
  def change
	rename_column :incomes, :note, :income_type
  end
end
