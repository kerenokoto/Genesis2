json.array!(@expenses) do |expense|
  json.extract! expense, :id, :month, :salary, :maintenance, :utility_bills
  json.url expense_url(expense, format: :json)
end
