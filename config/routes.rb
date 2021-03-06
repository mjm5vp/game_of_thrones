Rails.application.routes.draw do

  devise_for :users
  get 'characters/index'

  get 'characters/show'

  get 'characters/new'

  get 'characters/edit'

  get 'houses/index'

  get 'houses/show'

  get 'houses/new'

  get 'houses/edit'

  root to: 'houses#index'

  resources :houses do
    resources :characters
  end

  resources :characters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
