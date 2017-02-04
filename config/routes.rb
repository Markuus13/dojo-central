Rails.application.routes.draw do
  post "chickens/buy"
  post "chickens/feed"
  post "chickens/get_eggs"
  post "barns/add_chicken"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
