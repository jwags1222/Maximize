class CreatePayerCodes < ActiveRecord::Migration
  def change
    create_table :payer_codes do |t|
      t.string :CPT
      t.string :ICD9
      t.string :ICD10
      t.string :ICF 
      t.string :HCPCS
      t.string :Eye_codes
      t.integer :measure_id 
      t.integer :plan_id
      t.timestamps
    end
  end
end
