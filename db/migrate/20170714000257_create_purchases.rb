class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.string :total_amount
      t.date :valid_since
      t.date :valid_until
      t.references :vehicle, foreign_key: true
      t.references :payment, foreign_key: true

      t.timestamps
    end
  end
end
