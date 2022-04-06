class UsecasesController < ApplicationController

  def create
    @usecase = Usecase.new(usecase_params)
  end

  def show
    set_usecase
    @find_usecase = Casesiot.where(usecase: @usecase.id)
    @iotproduct = Iotproduct.where(id: @rec.iotproduct_id)
    each do |element|
      element.id = @rec.iotproduct
    end
  end

  def index
    @usecases = Usecase.all
  end

  private

  def set_usecase
    @usecase = Usecase.find(params[:id])
  end

  def usecase_params
    params.require(:usecase).permit(:name)
  end
end
