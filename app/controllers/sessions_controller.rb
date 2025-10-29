class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :destroy, if: -> { request.format.turbo_stream? }

  def new
    return redirect_to(root_path, notice: "You are already signed in.") if user_signed_in?
  end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Signed in successfully."
    else
      flash.now[:alert] = "Invalid email or password."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to new_session_path, notice: "Signed out successfully."
  end
end
