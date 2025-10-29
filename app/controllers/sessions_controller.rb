class SessionsController < ApplicationController
  layout "public"
  skip_before_action :authenticate_user!, only: %i[new create]

  def new
    redirect_to root_path if user_signed_in?
  end

  def create
    user = User.find_by(email: session_params[:email].to_s.downcase)

    if user&.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Signed in successfully."
    else
      flash.now[:alert] = "Invalid email or password."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    reset_session
    redirect_to login_path, notice: "Signed out successfully."
  end

  private

  def session_params
    params.permit(:email, :password)
  end
end
