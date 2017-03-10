Rails.application.routes.draw do
  get 'pages/about'

  root to: "pages#about"
  resources :cocktails do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: :destroy
end
