class ChangeDateFormatInBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :begin_date, :string
    remove_column :bookings, :end_date, :string
    add_column :bookings, :begin_date, :datetime
    add_column :bookings, :end_date, :datetime
    change_column :bookings, :status, :string, default: "pending"
  end
end
