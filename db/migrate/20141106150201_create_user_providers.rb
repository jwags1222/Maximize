class CreateUserProviders < ActiveRecord::Migration
  def change
    create_table :user_providers do |t|
      t.integer :user_id, :provider_id
      t.timestamps
    end
  end
end
