class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper_method :current_user, :user_signed_in?
  add_flash_types :info, :success

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  def current_user
    return @current_user if defined?(@current_user)

    if session[:user_id]
      @current_user = User.find_by(id: session[:user_id])
    else
      @current_user = nil
    end
  end

  def user_signed_in?
    current_user.present?
  end

  def authenticate_user!
    return if user_signed_in?

    redirect_to login_path, alert: "You need to sign in"
  end

  def require_admin!
    authenticate_user!
    return if performed?
    return if current_user&.admin? || current_user&.superadmin?

    redirect_to root_path, alert: "You are not authorized to perform that action."
  end

  def record_not_found
    redirect_to root_path, alert: "The record you were looking for could not be found."
  end
end
