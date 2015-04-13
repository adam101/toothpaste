class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime   :start_time,     null: false
      t.datetime   :end_time,       null: false
      t.references :treatment_plan, null: false, index: true
      t.boolean    :finalized,      default: false

      t.timestamps null: false
    end
  end
end
