class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :numcard
      t.string :name_owner
      t.date :expiry_date
      t.integer :code
      t.integer :dues_number

      t.timestamps
    end
  end
end
