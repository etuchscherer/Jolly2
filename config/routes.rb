EmberHelloWorld::Application.routes.draw do
  root to: 'home#index'

  match '*path' => 'home#index', :via => [:get]
# match 'gallery_:id' => 'gallery#show', :via => [:get], :as => 'gallery_show'
  namespace :api do
    namespace :v1 do
      resources :squadrons
    end
  end
end
