class UsecasesController < ApplicationController

  def create
    @usecase = Usecase.new(usecase_params)
  end

  def show
    set_usecase
    # @find_usecase = Casesiot.where(usecase: @usecase.id)
    # @find_iotproduct = Iotproduct.where(id: @find_usecase.iotproduct_id)
    # @rec = Iotproduct.joins(:usecase, :product)
    # User.joins(posts: [:comments])
    # # LEFT JOIN bookmarks
    # # ON bookmarks.bookmarkable_type = 'Post' AND bookmarks.user_id = users.id
    # each do |element|
    #   element.id = @rec.iotproduct
    # end
  end

  def index
    @usecases = Usecase.all
  end

  private

  def set_usecase
    @usecase = Usecase.find(params[:id])
  end

  def usecase_params
    params.require(:usecase).permit(:name, :photo)
  end
end
