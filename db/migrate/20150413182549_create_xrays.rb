class CreateXrays < ActiveRecord::Migration
  def change
    create_table :xrays do |t|
      t.string     :title
      t.string     :picture_uid
      t.references :patient, index: true

      t.timestamps null: false
    end
  end
end
