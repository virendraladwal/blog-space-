Rails.application.routes.draw do
  resources :users, except: :show
  resources :users
  root "articles#index"

  resources :articles do
    resources :comments
    
  end
end
