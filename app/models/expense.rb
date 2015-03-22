class Expense < ActiveRecord::Base
  belongs_to :business_trip_info
end
