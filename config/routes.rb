Rails.application.routes.draw do

  get "/users",to:"users#index"

  scope :auth do
    post '/signin', to: 'user_token#create'
    post '/signup', to: 'users#create'
  end
end
