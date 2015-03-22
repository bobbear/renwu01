class BusinessTripInfo < ActiveRecord::Base
  belongs_to :user
  has_many :expenses

  def total_expense
    expenses.inject(0) {|sum, expense| sum + expense.quantity * expense.unit_price }
  end
end
