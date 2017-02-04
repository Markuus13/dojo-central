class ChangeChickenEggCountDefaultToChicken < ActiveRecord::Migration[5.0]
  def change
    change_column :chickens, :egg_count, :integer, default: 0
  end
end
