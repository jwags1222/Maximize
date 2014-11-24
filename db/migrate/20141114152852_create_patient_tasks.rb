class CreatePatientTasks < ActiveRecord::Migration
  def change
    create_table :patient_tasks do |t|
      t.integer :patient_id, :task_id
      t.timestamps
    end
  end
end
