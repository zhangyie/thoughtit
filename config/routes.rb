Rails.application.routes.draw do


  resources :incomeplans
  resources :projects do
      resources :contracts
  end
  root  "home#index"
end
