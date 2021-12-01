Rails.application.routes.draw do
  resources :appointments
  resources :teachers
    get "/users",to:"users#index"
    
    scope :auth do
      post '/signin', to: 'user_token#create'
      post '/signup', to: 'users#create'
      get '/current_user',to: 'users#logged_in?'
      delete '/signout',to:'users#signout'
    end
end