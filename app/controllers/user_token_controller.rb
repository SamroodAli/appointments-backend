class UserTokenController < Knock::AuthTokenController
  skip_before_action :verify_authenticity_token, raise: false
  def create
    session[:jwt] = auth_token.token # save it into session the token generated
    render json: { username: User.find(auth_token.payload[:sub]).username }, status: :created
  end
end
