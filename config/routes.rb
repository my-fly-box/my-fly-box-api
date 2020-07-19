Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :flies
      resources :catches
    end
  end
end
