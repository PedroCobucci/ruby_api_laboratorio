Rails.application.routes.draw do
  mount_devise_token_auth_for 'Usuario', at: 'auth'
  resources :exames
  resources :users, only: [:index, :show, :update, :destroy] do
    collection do
      get :getUsuarioByCPF
      post :checkPassword
    end
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
