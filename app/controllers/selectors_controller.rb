class SelectorsController < ApplicationController
  before_action :set_selector, only: [:show, :edit, :update, :destroy]

  # GET /selectors
  def index
    @selectors = Selector.all
  end

  # GET /selectors/1
  def show
  end

  # GET /selectors/new
  def new
    @selector = Selector.new
  end

  # GET /selectors/1/edit
  def edit
  end

  # POST /selectors
  def create
    @selector = Selector.new(selector_params)

    if @selector.save
      redirect_to selectors_path, notice: 'Selector was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /selectors/1
  def update
    if @selector.update(selector_params)
      redirect_to @selector, notice: 'Selector was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /selectors/1
  def destroy
    @selector.destroy
    redirect_to selectors_url, notice: 'Selector was successfully destroyed.'
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selector
      @selector = Selector.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def selector_params
      params.require(:selector).permit(:style, :value)
    end
end
