class CreateUserInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :user_informations do |t|
      t.string :name
      t.date   :dob
      t.string :address
      t.string :landmark
      t.string :city
      t.string :pin_code
      t.string :country
      t.references :user, index: true
      t.timestamps
    end
  end
end