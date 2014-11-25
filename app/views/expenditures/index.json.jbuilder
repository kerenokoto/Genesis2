json.array!(@expenditures) do |expenditure|
  json.extract! expenditure, :id, :date, :salary, :maintenance, :utility_bills, :total_expenditure
  json.url expenditure_url(expenditure, format: :json)
end
