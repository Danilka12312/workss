Rails.application.routes.draw do
  resources :contacts_forms
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :new_reponses
  get 'home/about'
  get 'home/contacts'
  resources :works
  root 'home#chelyabinsk'
end