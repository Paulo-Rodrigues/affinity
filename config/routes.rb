Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}

  get '/profile/:id', to: 'users#show', as: :profile

  authenticated :user do
    root to: "dashboards#index", as: :dashboard
  end

  resources :thoughts, except: [:index] do
    resources :votes, only: [:create, :destroy], module: :thoughts
  end

  root 'landing_page#index'
end
