Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource  :session, only: [:create, :new, :destroy]

  resources :users,   only: [:index, :create, :new, :show]

  resources  :bands do
    resource :albums, only: [:new]
  end

  resources :albums,  only: [:create, :edit, :show, :update, :destroy]
end
