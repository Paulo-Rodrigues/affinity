Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}

  get '/profile/:id', to: 'users#show', as: :profile

  authenticated :user do
    root to: "dashboards#index", as: :dashboard
  end

  resources :thoughts, except: [:index]

  root 'landing_page#index'
end
