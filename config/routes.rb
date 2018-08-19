Rails.application.routes.draw do
  devise_for :admins, skip: [:registrations]
  devise_scope :admin do
    get 'sign_in', to: 'devise/sessions#new'    
  end
  root 'pages#home'
  get '/home', to: 'application#home', as: :home
  resources :gigs, except: :show
  resources :pages, except: :show
end
