Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  delete "cocktails/:id", to: "cocktails#destroy"
  root to: "pages#about"
  resources :cocktails do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: :destroy
end
