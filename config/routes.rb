Rails.application.routes.draw do
  devise_for :admins, skip: [:registrations]
  devise_scope :admin do
    get 'sign_in', to: 'devise/sessions#new'
    
  end
  get 'edit', to: 'pages#edit'
  resources :gigs
  root 'pages#index'
end
