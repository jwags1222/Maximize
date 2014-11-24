class CreatePatientPlans < ActiveRecord::Migration
  def change
    create_table :patient_plans do |t|
      t.integer :plan_id, :patient_id
      t.timestamps
    end
  end
end
