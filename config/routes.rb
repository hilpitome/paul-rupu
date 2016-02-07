Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :orders
  resources :line_items
  resources :carts

  resources :users
  resources :travels, :controller => "deals", :type => "Travel"
  resources :eventsandactivities, :controller => "deals", :type => "EventAndActivity"
  resources :foodanddrinks, :controller => "deals", :type => "FoodAndDrink"
  resources :beauties, :controller => "deals", :type => "Beauty"
  resources :electronics, :controller => "deals", :type => "Electronic"
  resources :fashions, :controller => "deals", :type => "Fashion"
  resources :homeandlivings, :controller => "deals", :type => "HomeAndLiving"
  resources :user_sessions, only: [ :new, :create, :destroy ]
  root :to => 'users#index'
  resources :deals do
    get :who_bought, on: :member
  end

  get 'login'  => 'user_sessions#new', :as => :login
  get 'logout' => 'user_sessions#destroy', :as => :logout
  get "signup" => "users#new", :as => :signup
  get 'clear/cart' => 'cart#destroy'



end
