Rails.application.routes.draw do
  root to: "meetings#index"
  devise_for :users
  resources :meetings
  resources :qualifications
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:index, :new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
