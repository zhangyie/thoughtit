Rails.application.routes.draw do


  resources :projects do
      resources :contracts
  end
  root  "home#index"
end
