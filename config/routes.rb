Rails.application.routes.draw do

  root 'pages#home'
  resources :locations, only: [:new, :create, :index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
