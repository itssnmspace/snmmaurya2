class CreateUserTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :user_types do |t|
      t.string :name
      t.boolean :status, default: true
      t.timestamps
    end
  end
end
