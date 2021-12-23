class ApplicationController < ActionController::API
  include Knock::Authenticable
  include ActionController::Cookies

  def token
    # cookies.signed[:jwt]
    session[:jwt]
  end
end
