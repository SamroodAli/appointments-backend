class ApplicationController < ActionController::API
  include Knock::Authenticable
  include ActionController::Cookies

  def token
    # cookies.signed[:jwt]
    session[:jwt]
  end

  # def authenticate_user
  # end

  # def current_user 
  #   User.first
  # end

end
