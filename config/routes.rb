Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'cocktails#index'
end
