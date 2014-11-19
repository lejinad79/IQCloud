Rails.application.routes.draw do
  resources :system_setups

  resources :locations

  resources :economies

  resources :harvests

  resources :feedings

  resources :inspections

  resources :apiary_works

  resources :pollination_places

  resources :bad_places

  resources :beehive_groups

  resources :beehives

  resources :apiaries

  resources :setup_apiary

  devise_for :beekeepers

  get 'dashboard/index'

  root 'dashboard#index'

  match ':controller(/:action(/:id))', :via => [:get, :post]

end
