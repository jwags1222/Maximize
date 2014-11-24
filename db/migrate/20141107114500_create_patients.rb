class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :firstname 
      t.string :lastname
      t.string :middlename
      t.string :cellphone
      t.string :homephone
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :facebook_url
      t.string :gender
      t.string :SSN
      t.string :member_id
      t.integer :plan_id
      t.date :DOB
      


    end
  end
end
