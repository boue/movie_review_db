Rails.application.routes.draw do
  resources :reviews

  devise_for :users

  resources :movies do 
    resources :reviews, except: [:show, :index]
  end
  
  root to: "movies#index"
end
