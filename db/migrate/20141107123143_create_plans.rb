class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :plan_title
      t.string :insurance
      t.integer :total_revenue
      t.integer :revenue_increase
      t.date :last_revenue_increase 
      t.integer :goal
      t.string :plan_id
      t.date :start_date
      t.string :duration  
    end
  end
end
