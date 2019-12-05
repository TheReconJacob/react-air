class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :ptoperty_id
      t.string :from_date
      t.string :to_date

      t.timestamps
    end
  end
end
