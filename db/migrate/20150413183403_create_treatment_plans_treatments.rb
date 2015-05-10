class CreateTreatmentPlansTreatments < ActiveRecord::Migration
  def change
    create_table :treatment_plans_treatments do |t|
      t.references :treatment_plan, null: false, index: true
      t.references :treatment,      null: false, index: true

      t.timestamps null: false
    end
  end
end
