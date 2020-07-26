Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :flies
      resources :catches
      resources :images, only: [:new, :create]
    end
  end
end
