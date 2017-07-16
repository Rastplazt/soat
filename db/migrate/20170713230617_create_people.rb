class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :type_document
      t.integer :document
      t.string :name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
