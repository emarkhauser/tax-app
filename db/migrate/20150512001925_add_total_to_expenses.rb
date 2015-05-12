class AddTotalToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :total, :decimal
  end
end
