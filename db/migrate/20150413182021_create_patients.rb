class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string     :first_name,             null: false
      t.string     :last_name,              null: false
      t.string     :address,                null: false
      t.integer    :zip,                    null: false
      t.string     :city,                   null: false
      t.date       :birthday,               null: false
      t.string     :social_security_number, null: false
      t.string     :email,                  null: false
      t.string     :phone_number,           null: false
      t.string     :gender,                 null: false
      t.references :user,                   index: true

      t.timestamps null: false
    end
  end
end
