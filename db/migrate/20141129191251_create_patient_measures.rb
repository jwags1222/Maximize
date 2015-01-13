class CreatePatientMeasures < ActiveRecord::Migration
  def change
    create_table :patient_measures do |t|
      t.integer :measure_id, :patient_id
      t.timestamps

    end
  end
end
