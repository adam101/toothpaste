class CreateTreatmentPlans < ActiveRecord::Migration
  def change
    create_table :treatment_plans do |t|
      t.string     :title,   null: false
      t.references :patient, null: false, index: true
      t.datetime   :finished_at

      t.timestamps null: false
    end
  end
end
