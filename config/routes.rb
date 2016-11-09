Rails.application.routes.draw do
  resources :comments
  resources :prayers
  ActiveAdmin.routes(self)
  devise_for :users

  resources :prayers do
    resources :comments
  end

  as :user do
    get "login" => "devise/sessions#new"
    delete "logout" => "devise/sessions#destroy"
    get "signup" => "devise/registrations#new"
    get "account" => "devise/registrations#edit"
  end

  root 'pages#home'

  get "about" => "pages#about"
  get "contact" => "pages#contact"
end
