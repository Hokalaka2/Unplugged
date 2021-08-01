Rails.application.routes.draw do
  devise_for :users, :controllers =>  {registrations: 'registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  authenticated :user do
    get '/', to: "medias#index"
    get '/about', to: "homes#index"
    post '/update_plugged/:id', to: 'medias#update_plugged'
    resources :friendships, only: [:new, :create, :index, :destroy], :controller => :friendships
  end
  root :to => 'homes#index'

  resources :media, only: [:new, :create, :index, :destroy], :controller => :medias

  
end
