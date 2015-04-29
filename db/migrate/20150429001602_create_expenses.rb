class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.decimal :amount
      t.references :category, index: true, foreign_key: true
      t.string :note
      t.date :date
      t.decimal :hst

      t.timestamps null: false
    end
  end
end
