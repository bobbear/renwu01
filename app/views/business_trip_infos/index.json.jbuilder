json.array!(@business_trip_infos) do |business_trip_info|
  json.extract! business_trip_info, :id, :user_id, :start_date, :end_date, :destination, :total_expense
  json.url business_trip_info_url(business_trip_info, format: :json)
end
