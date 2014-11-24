class CreateUserPatients < ActiveRecord::Migration
  def change
    create_table :user_patients do |t|
      t.integer :user_id, :patient_id
      t.timestamps
    end
  end
end
