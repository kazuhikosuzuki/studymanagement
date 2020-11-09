Rails.application.routes.draw do
  get 'messages/index'
  devise_for :users
  resources :meetings
  root to: "messages#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:index, :new, :create]
 resources :qualifications do
 end

end
