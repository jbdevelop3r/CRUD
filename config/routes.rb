Rails.application.routes.draw do
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    authenticated :user do
      root to: 'musics#index', as: :authenticated_root
      resources :musics
    end
  end

  unauthenticated :user do
    root to: 'devise/sessions#new', as: :unauthenticated_root
end

end
