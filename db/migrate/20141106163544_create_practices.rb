class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|

      t.string :name
      t.string :main_location
      t.string :primary_contact
      t.string :tax_id
      t.integer :provider_id
      t.text :address
      t.string :city
      t.string :state
      t.string :phone
      t.timestamps

    end
  end
end
