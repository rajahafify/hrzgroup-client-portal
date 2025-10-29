class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :user_signed_in?

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def user_signed_in?
    current_user.present?
  end

  def authenticate_user!
    redirect_to new_session_path, alert: "Please sign in" unless user_signed_in?
  end

  def require_admin!
    authenticate_user!
    unless current_user&.admin? || current_user&.superadmin?
      redirect_to root_path, alert: "You are not authorized to perform this action."
    end
  end
end
