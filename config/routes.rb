Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tasks 
      get 'arrivals', to: 'tasks#arrivals'
      get 'departures', to: 'tasks#departures'
    end
  end
end
