class ChangeChickenHungryDefaultToChicken < ActiveRecord::Migration[5.0]
  def change
    change_column :chickens, :hungry, :boolean, default: true
  end
end
