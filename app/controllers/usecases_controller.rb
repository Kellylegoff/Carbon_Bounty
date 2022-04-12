class UsecasesController < ApplicationController
  def create
    @usecase = Usecase.new(usecase_params)
  end

  def show
    # render_404

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
    if params[:query].present?
      @usecases = Usecase.search_by_use_cases(params[:query])
    else
      @usecases = Usecase.all
    end
    params[:query] = ""
  end

  def render_404
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/422.html", :layout => false, :status => :not_found }
      format.xml  { head :not_found }
      format.any  { head :not_found }
    end
  end

  private

  def set_usecase
    @usecase = Usecase.find(params[:id])
  end

  def usecase_params
    params.require(:usecase).permit(:name, :photo)
  end
end
