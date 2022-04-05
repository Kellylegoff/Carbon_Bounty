class UsecasesController < ApplicationController

  def create
    @usecase = Usecase.new(usecase_params)
  end

  def show
    set_usecase
  end

  def index
    @usecase = Usecase.all
  end

  private

  def set_usecase
    @usecase = Usecase.find(params[:id])
  end

  def usecase_params
    params.require(:usecase).permit(:name)
  end
end
