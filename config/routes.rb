Rails.application.routes.draw do
  
  devise_for :users

 
  root to: "pages#home"
  get "pages/home", to: "pages#home"  # Optional if already using root

  
  get "dashboard", to: "dashboard#home", as: :dashboard

  # All resources
  resources :garages
  resources :proprietaires
  resources :voitures
  resources :employes 
  resources :services
  resources :parties
  resources :fournisseurs
  resources :transporteurs
  resources :commandes
  resources :info_commandes

 
end

