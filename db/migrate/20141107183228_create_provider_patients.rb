class CreateProviderPatients < ActiveRecord::Migration
  def change
    create_table :provider_patients do |t|
      t.integer :provider_id, :patient_id
      t.timestamps
    end
  end
end
