Rails.application.routes.draw do
  devise_for :users
  resources :owners do
    resources :rests
  end
  # get 'home/index'
  root :to => "home#index"
end
