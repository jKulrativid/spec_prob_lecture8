class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :id
      t.string :username
      t.string :full_name
      t.string :password_digest
      t.boolean :admin

      t.timestamps
    end
  end
end
