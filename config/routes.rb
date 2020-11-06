Rails.application.routes.draw do
  resources :meetings
 root to: "meetings#index"
 resources :qualifications do
 end

end
