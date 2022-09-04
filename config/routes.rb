Rails.application.routes.draw do
  resources :brands
  devise_for :users  

  get 'admin', to: "admin#index"
  root to: "home#index"
end
