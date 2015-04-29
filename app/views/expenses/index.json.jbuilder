json.array!(@expenses) do |expense|
  json.extract! expense, :id, :amount, :category_id, :note, :date, :hst
  json.url expense_url(expense, format: :json)
end
