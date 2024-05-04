Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Rails.application.routes.draw do
  #   get 'plans/calendar' => 'plans#calendar'
    # get '/blue_plan/calendar', to: 'blue_plan#calendar'

  Rails.application.routes.draw do
    get 'plans' => 'plans#index'
    get 'plans/new' => 'plans#new'
    get 'plans/calendar' => 'plans#calendar'
  end
    
  
end
