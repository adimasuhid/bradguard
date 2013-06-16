EmailgogoRails::Application.routes.draw do
  devise_for :users

  resources :monitored_emails
  resources :incoming_mails
  resources :welcome
  resources :dashboard, only: [:index]
  resources :recipient_lists, only: [:create]
  resources :recipients, only: [:create]
  resources :csv_uploads, only: [:create]
  root :to => 'welcome#index'

end
