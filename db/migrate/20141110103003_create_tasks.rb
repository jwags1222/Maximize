class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :insurer 
      t.string :plan_name
      t.text :description 
      t.string :status
      t.integer :plan_id 
      t.integer :patient_id
      t.integer :measure_id
      t.boolean :gap
      t.timestamps

    end
  end
end
