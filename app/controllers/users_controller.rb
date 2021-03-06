class UsersController < ApplicationController
  # before_action :authenticate_user, except: %i[create signout]

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1
  def show
    if current_user
      render json: { current_user: current_user.username }, status: :ok
    else
      render json: { current_user: nil }, status: 401
    end
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      auth_token = Knock::AuthToken.new(payload: { sub: @user.id })
      session[:jwt] = auth_token.token
      render json: @user, status: :created
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    session[:jwt] = nil
    render json: { current_user: nil }, status: :ok
  end

  private

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
