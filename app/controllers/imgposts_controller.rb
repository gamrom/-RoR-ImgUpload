class ImgpostsController < ApplicationController
  before_action :set_imgpost, only: [:show, :edit, :update, :destroy]

  # GET /imgposts
  # GET /imgposts.json
  def index
    @imgposts = Imgpost.all
  end

  # GET /imgposts/1
  # GET /imgposts/1.json
  def show
  end

  # GET /imgposts/new
  def new
    @imgpost = Imgpost.new
  end

  # GET /imgposts/1/edit
  def edit
  end

  # POST /imgposts
  # POST /imgposts.json
  def create
    @imgpost = Imgpost.new(imgpost_params)

    respond_to do |format|
      if @imgpost.save
        format.html { redirect_to @imgpost, notice: 'Imgpost was successfully created.' }
        format.json { render :show, status: :created, location: @imgpost }
      else
        format.html { render :new }
        format.json { render json: @imgpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imgposts/1
  # PATCH/PUT /imgposts/1.json
  def update
    respond_to do |format|
      if @imgpost.update(imgpost_params)
        format.html { redirect_to @imgpost, notice: 'Imgpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @imgpost }
      else
        format.html { render :edit }
        format.json { render json: @imgpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imgposts/1
  # DELETE /imgposts/1.json
  def destroy
    @imgpost.destroy
    respond_to do |format|
      format.html { redirect_to imgposts_url, notice: 'Imgpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imgpost
      @imgpost = Imgpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imgpost_params
      params.require(:imgpost).permit(:title, :content, :image)
    end
end
