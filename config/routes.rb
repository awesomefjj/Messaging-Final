Rails.application.routes.draw do
  resources :notifications
  resource :dashboard, only: %i[show]
  resources :messages, only: %i[index show] do
    get :search, on: :collection
  end
  resources :tenants do
    get :search, on: :collection
    resources :messages, only: %i[index new create] do
      get :search, on: :collection
    end
  end

  root to: 'dashboards#show'
end
