class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.text :description
      t.integer :user_id
      t.integer :group_id
      t.timestamps 

    end
  end
end
