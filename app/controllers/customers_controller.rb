class CustomersController < ApplicationController
  before_action :set_customer, only: [:create, :show, :update, :destroy]

  def create
    @customer.save
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def index
    @customer = Customer.all
  end

  def update
    set_usecase
  end

  def destroy
    set_usecase
    @customer.destroy
  end

  private

  def set_usecase
    @customer = Customer.find(params[:id])
  end

  def usecase_params
    params.require(:customer).permit(:company_name, :address, :phone, :contact_first_name, :contact_last_name, :role, :company_type, :sector)
  end
end
