class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :admin_access?

  before_action :require_login

  private

  def current_user
    return @current_user if defined?(@current_user)

    @current_user = User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user.present?
  end

  def require_login
    redirect_to login_path, alert: "Please sign in to continue." unless logged_in?
  end

  def authorize_admin!
    return if current_user&.superadmin? || current_user&.admin?

    redirect_to root_path, alert: "You are not authorized to perform that action."
  end

  def admin_access?
    current_user&.superadmin? || current_user&.admin?
  end
end
