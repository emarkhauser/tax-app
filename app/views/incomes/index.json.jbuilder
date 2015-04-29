json.array!(@incomes) do |income|
  json.extract! income, :id, :cashSales, :salesReturns, :totalSales, :paymentOnAccount, :client_id, :note, :date, :hst
  json.url income_url(income, format: :json)
end
