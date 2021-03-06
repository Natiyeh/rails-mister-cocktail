Rails.application.routes.draw do
  resources :cocktails, only: [:index, :new, :show, :create, :destroy] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  resources :ingredients, only: [:index, :new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
