class CreateTools < ActiveRecord::Migration[6.0]
  def change
    create_table :tools do |t|
      t.integer :daily_price
      t.string :location
      t.string :description
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
