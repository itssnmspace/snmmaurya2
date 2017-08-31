class CreateUserContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :user_contacts do |t|
      t.integer :contact
      t.references :user, index: true
      t.timestamps
    end
  end
end