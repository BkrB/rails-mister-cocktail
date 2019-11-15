Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.
  root to: 'coctails#index'
  resources :cocktails, only: [:show, :new, :create] do
    resources :doses, only: [:show, :new, :create]
  end
  resources :doses, only: [:destroy]
end
