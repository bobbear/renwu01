class CreateBusinessTripInfos < ActiveRecord::Migration
  def change
    create_table :business_trip_infos do |t|
      t.integer :user_id
      t.date :start_date
      t.date :end_date
      t.string :destination
      t.decimal :total_expense

      t.timestamps null: false
    end
  end
end
