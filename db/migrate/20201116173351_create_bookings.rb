class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :begin_date
      t.string :end_date
      t.integer :price_to_invoice
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :tool, null: false, foreign_key: true

      t.timestamps
    end
  end
end
