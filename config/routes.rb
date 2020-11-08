Rails.application.routes.draw do
  devise_for :users
  resources :meetings
 root to: "meetings#index"
 resources :qualifications do
 end

end
