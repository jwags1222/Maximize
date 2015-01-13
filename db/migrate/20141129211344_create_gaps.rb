class CreateGaps < ActiveRecord::Migration
  def change
    create_table :gaps do |t|
      t.string :measure_name
      t.integer :patient_id, :task_id, :measure_id, :payer_code_id 
      t.boolean :open

    end
  end
end
