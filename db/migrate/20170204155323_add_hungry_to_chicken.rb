class AddHungryToChicken < ActiveRecord::Migration[5.0]
  def change
    add_column :chickens, :hungry, :boolean
  end
end
