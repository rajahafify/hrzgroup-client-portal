class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.superadmin? || current_user.admin?
      @clients = Client.order(:company_name)
    else
      @clients = Client.none
    end
  end
end
