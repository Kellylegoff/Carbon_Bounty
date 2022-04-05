class IotproductsController < ApplicationController
  before_action :set_offer, only: [:show]

  def create
    @Iotproduct = Iotproduct.new(offer_params)
    # @Iotproduct.user = current_user
      # if @Iotproduct.save
        # redirect_to iotproduct_path(@iotproduct)
      # else
      #  render :new
      # end
  end

  def new
    @iotproduct = Iotproduct.new
    # @user = current_user
  end

  def show
    set_iotproduct
  end

  def index
    @iotproducts = Iotproduct.all
  end

  def update
    set_iotproduct
    @iotproduct.update(iotproduct_params)
    # redirect_to iotproduct_path(@iotproduct)
  end

  def destroy
    set_iotproduct
    @iotproduct.destroy
    # redirect_to iotproducts_path
  end
end

private

def set_iotproduct
  @iotpruduct = Iotproduct.find(params[:id])
end

def iotproduct_params
  params.require(:iotproduct).permit(:product_name, :product_type, :constructor, :eco_score)
end

# def index
#   if params[:query].present?
#     @iotproduct = Iotproduct.search_by_product_name(params[:query])
#   else
#     @iotproduct = Iotproduct.all
#   end
#   params[:query] = ""
# end
