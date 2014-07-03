EmberHelloWorld::Application.routes.draw do
  root to: 'home#index'

  namespace :api do
    namespace :v1 do
      resources :squadrons
    end
  end
end
