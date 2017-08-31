class CreateUserEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :user_emails do |t|
      t.string :email
      t.references :user, index: true
      t.timestamps
    end
  end
end