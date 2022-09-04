Rails.application.routes.draw do
  resources :brands do
    resources :items
  end
  
  devise_for :users  

  get 'admin', to: "admin#index"
  root to: "home#index"
end
