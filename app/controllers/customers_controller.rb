class CustomersController < ApplicationController
  before_action :set_customer, only: [:create, :show, :update, :destroy]

  def create
    @customer = Customer.new(customer_params)
    @customer.user = current_user
      if @customer.save
        redirect_to customer_show_path(@customer)
      else
        render :create
      end
  end

  def new
    @customer = Customer.new
    @user = current_user
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def index
    @customer = Customer.all
  end

  def update
    set_customer
  end

  def destroy
    set_customer
    @customer.destroy
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:company_name, :address, :phone, :contact_first_name, :contact_last_name, :role, :company_type, :sector)
  end
end
