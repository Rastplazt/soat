class CreateVehicleTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_types do |t|
      t.integer :code
      t.string :name
      t.string :subtype
      t.integer :year
      t.float :tax
      t.integer :prime
      t.integer :fosyga
      t.integer :runt

      t.timestamps
    end
  end
end
