Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "authenticate", to: "authentication#authenticate"
      post "signup", to: "signup#create"
      resources :users, only: :show
      resources :lists
      resources :tasks
    end
  end
end
