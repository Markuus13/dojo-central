class AddBarnIdToChickens < ActiveRecord::Migration[5.0]
  def change
    add_column :chickens, :barn_id, :integer
  end
end
