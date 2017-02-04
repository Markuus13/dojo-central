class AddEggCountToChicken < ActiveRecord::Migration[5.0]
  def change
    add_column :chickens, :egg_count, :integer
  end
end
