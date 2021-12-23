Rails.application.routes.draw do
  scope :api do
    
    resources :appointments
    resources :teachers
    get "/users",to:"users#index"
    
    scope :auth do
      post '/signin', to: 'user_token#create'
      post '/signup', to: 'users#create'
      get '/current_user',to: 'users#show'
      delete '/signout',to:'users#destroy'
    end
  end

  get "*react",to:"react#index"
end