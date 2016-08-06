Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :rests, shallow: true
  end
  # get 'home/index'
  root :to => "home#index"
  get 'rests/destroy/:id' => 'rests#destroy', :as => 'destroy_rest'
  get 'home/show' => 'home#show', :as => 'show_home'
  get 'rests' => 'rests#all', :as => 'all_rest'
end
