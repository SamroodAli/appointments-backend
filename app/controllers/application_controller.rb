class ApplicationController < ActionController::API
  include Knock::Authenticable

  def token
    cookies[:jwt]
  end
end
