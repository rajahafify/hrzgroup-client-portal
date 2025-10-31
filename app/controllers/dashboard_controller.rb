class DashboardController < ApplicationController
  def show
    if admin_access?
      @clients = Client.order(:company_name)
      render :admin and return
    else
      @client = current_user.client
      if @client
        render :client
      else
        render :no_client
      end
    end
  end
end
