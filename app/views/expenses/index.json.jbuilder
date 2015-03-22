json.array!(@expenses) do |expense|
  json.extract! expense, :id, :business_trip_info_id, :goods_name, :quantity, :unit_price
  json.url expense_url(expense, format: :json)
end
