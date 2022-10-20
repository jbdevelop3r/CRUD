Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "musics#index"
  get "musics/about"
  get "musics/header"

  resources :musics do 
    resources :comments
  end
end
