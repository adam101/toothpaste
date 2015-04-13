class CreateTreatmentsTreatmentPlans < ActiveRecord::Migration
  def change
    create_table :treatments_treatment_plans do |t|
      t.references :treatment,      null: false, index: true
      t.references :treatment_plan, null: false, index: true

      t.timestamps null: false
    end
  end
end
