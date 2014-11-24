class CreatePatientPosts < ActiveRecord::Migration
  def change
    create_table :patient_posts do |t|
      t.integer :patient_id, :post_id
      t.timestamps
    end
  end
end
