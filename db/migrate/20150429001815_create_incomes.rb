class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.decimal :cashSales
      t.decimal :salesReturns
      t.decimal :totalSales
      t.decimal :paymentOnAccount
      t.references :client, index: true, foreign_key: true
      t.string :note
      t.date :date
      t.decimal :hst

      t.timestamps null: false
    end
  end
end
