class ChickensController < ApplicationController
  before_action :set_chicken, except: :buy

  def buy
    Chicken.create
  end

  def feed
    @chicken.feed
  end

  def get_eggs
    @chicken.collect_eggs
  end

  private

  def set_chicken
    @chicken = Chicken.find(params[:chicken_id])
  end
end
