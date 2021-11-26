class UserTokenController < Knock::AuthTokenController
  skip_before_action :verify_authenticity_token, raise: false
  def create
    response.set_cookie(
      :jwt,
      {
        value: auth_token.token,
        expires: 30.minutes.from_now,
        path: '/api',
        secure: true,
        httponly: Rails.env.production?
      }
    )

    render json: {
      jwt: auth_token.token,
      username: User.find(auth_token.payload[:sub]).username
    }
  end
end
