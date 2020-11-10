Rails.application.routes.draw do
  root to: 'meetings#index'
  devise_for :users
  resources :meetings
  resources :users, only: %i[edit update]
  resources :rooms, only: %i[index new create destroy] do
    resources :messages, only: %i[index create]
  end
end
