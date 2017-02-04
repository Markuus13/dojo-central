require 'rails_helper'

RSpec.describe ChickensController, type: :controller do

  it 'should buy a chicken' do
    expect(Chicken.all.length).to eq 0
    post :buy
    expect(Chicken.all.length).to eq 1
  end

  context 'when feeding a chicken' do
    before :each do
      @chicken = Chicken.create(hungry: true)
    end

    it 'should feed a chicken' do
      expect(@chicken.hungry).to eq true
      post :feed, params: {
        chicken_id: @chicken.id
      }
      @chicken.reload
      expect(@chicken.hungry).to eq false
    end
  end

  context 'when handling eggs' do
    before :each do
      @chicken = Chicken.create(hungry: false, egg_count: 10)
    end

    it 'should get eggs' do
      expect(@chicken.hungry).to eq false
      expect(@chicken.egg_count).to be > 0
      post :get_eggs, params: {
        chicken_id: @chicken.id
      }
      @chicken.reload
      expect(@chicken.hungry).to eq true
      expect(@chicken.egg_count).to eq 0
    end
  end


  it 'should add chickens' do
      @barn = Barn.new
      expect(@barn.chickens.length).to eq 0
      post 'add_chicken', controller: 'barns',  params: {
        barn_id: @barn.id
      }
      @barn.reload
      expect(@barn.chickens.length).to eq 1
  end
end
