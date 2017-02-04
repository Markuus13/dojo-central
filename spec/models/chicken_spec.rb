require 'rails_helper'

RSpec.describe Chicken, type: :model do
  context 'when creating a chicken' do
    let (:valid_attributes){
      {
        egg_count: 5
      }
    }

    let (:invalid_attributes) {
      {
        egg_count: -2
      }
    }

    it "should be invalid" do
      @chicken = Chicken.create(invalid_attributes)
      expect(@chicken).to_not be_valid
    end

    it "should be hungry" do
      @chicken = Chicken.create
      expect(@chicken.hungry).to eq true
    end

    it "should not have eggs" do
      @chicken = Chicken.create
      expect(@chicken.egg_count).to eq 0
    end
  end
end
