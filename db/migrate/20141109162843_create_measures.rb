class CreateMeasures < ActiveRecord::Migration
  def change
    create_table :measures do |t|
      t.string :insurer
      t.float :benchmark
      t.boolean :gap
      t.string :status
      t.text :qualifying_patients
      t.boolean :flagged 
      t.string :pcmh_network_key      
      t.string :category 
      t.text :explaination
      t.text :measure_name
      t.integer :plan_id
      t.integer :patient_id
      t.timestamps


    end
  end
end
