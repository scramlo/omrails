Rails.application.routes.draw do
  devise_for :users

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
