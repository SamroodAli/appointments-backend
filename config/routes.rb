Rails.application.routes.draw do
    get "/users",to:"users#index"
    
    scope :auth do
      post '/signin', to: 'user_token#create'
      post '/signup', to: 'users#create'
      get '/current_user',to: 'users#logged_in?'
      delete '/signout',to:'user_token#delete'
    end
end
