Rails.application.routes.draw do

  resources :users, only: :show, param: :id do
      member do
        post "follow", to: "follows#create"
        delete "unfollow", to: "follows#destroy"
      end
  end

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
  get "public" => "pages#public"

end
