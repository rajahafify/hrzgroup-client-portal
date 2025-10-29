class ClientsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_client, only: %i[show edit update destroy]
  before_action :authorize_admin_actions!, except: %i[index show]
  before_action :authorize_show!, only: :show

  def index
    if current_user.client? && current_user.client_id.present?
      @clients = Client.where(id: current_user.client_id)
    elsif current_user.client?
      @clients = Client.none
    else
      @clients = Client.order(:company_name)
    end
  end

  def show; end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to @client, notice: "Client was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @client.update(client_params)
      redirect_to @client, notice: "Client was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @client.destroy
    redirect_to clients_path, notice: "Client was successfully removed."
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:company_name, :contact_no, :contact_email)
  end

  def authorize_admin_actions!
    require_admin!
  end

  def authorize_show!
    return unless current_user.client?
    return if @client.id == current_user.client_id

    redirect_to root_path, alert: "You are not authorized to view that client."
  end
end
