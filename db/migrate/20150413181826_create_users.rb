class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,              null: false
      t.string :encrypted_password
      t.string :first_name,         null: false
      t.string :last_name,          null: false
      t.boolean :doctor,            default: false
      t.boolean :admin,             default: false

      t.timestamps null: false
    end
  end
end
