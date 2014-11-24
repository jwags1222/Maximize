class AddPracticeIdToProviders < ActiveRecord::Migration
  def change
    add_column :providers, :practice_id, :integer
  end
end
