Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]

  root 'webpages#index'
  resources :blogs do
    collection do
      post :confirm
    end
  end
  
  resources :users, only: [:new, :create, :show]
end
