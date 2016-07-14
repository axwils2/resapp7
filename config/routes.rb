Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :rests, shallow: true
  end
  # get 'home/index'
  root :to => "home#index"
end
