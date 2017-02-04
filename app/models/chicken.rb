class Chicken < ApplicationRecord
  validates :egg_count, numericality: { greater_than_or_equal_to: 0 }
  belongs_to :barn, required: false

  def feed
    self.hungry = false
    save
  end

  def collect_eggs
    self.hungry = true
    self.egg_count = 0
    save
  end
end
