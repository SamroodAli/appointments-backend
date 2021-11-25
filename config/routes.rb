Rails.application.routes.draw do
  namespace :api do
    post '/signin', to: 'user_token#create'
    post '/signup', to: 'users#create'
  end
end
