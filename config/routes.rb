EmberHelloWorld::Application.routes.draw do
  root to: 'home#index'
  match '/' => 'home#index', via: :get

  namespace :api do
    namespace :v1 do
      resources :squadrons
    end
  end

  match '*path' => 'home#index', via: :get
end
