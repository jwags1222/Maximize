class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :username
      t.string :title
      t.string :office
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      
      t.timestamps


    end
  end
end
