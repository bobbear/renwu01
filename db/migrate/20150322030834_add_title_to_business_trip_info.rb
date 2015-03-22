class AddTitleToBusinessTripInfo < ActiveRecord::Migration
  def change
    add_column :business_trip_infos, :title, :string
  end
end
