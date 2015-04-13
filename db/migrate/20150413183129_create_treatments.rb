class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.string  :title,       null: false
      t.integer :price,       null: false
      t.text    :description

      t.timestamps null: false
    end
  end
end
