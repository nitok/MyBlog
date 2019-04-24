class SakesController < ApplicationController
  before_action :set_sake, only: [:show, :edit, :update, :destroy]

  # GET /sakes
  # GET /sakes.json
  def index
    @sakes = Sake.all
  end

  # GET /sakes/1
  # GET /sakes/1.json
  def show
  end

  # GET /sakes/new
  def new
    @sake = Sake.new
  end

  # GET /sakes/1/edit
  def edit
  end

  # POST /sakes
  # POST /sakes.json
  def create
    @sake = Sake.new(sake_params)

    respond_to do |format|
      if @sake.save
        format.html { redirect_to @sake, notice: 'Sake was successfully created.' }
        format.json { render :show, status: :created, location: @sake }
      else
        format.html { render :new }
        format.json { render json: @sake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sakes/1
  # PATCH/PUT /sakes/1.json
  def update
    respond_to do |format|
      if @sake.update(sake_params)
        format.html { redirect_to @sake, notice: 'Sake was successfully updated.' }
        format.json { render :show, status: :ok, location: @sake }
      else
        format.html { render :edit }
        format.json { render json: @sake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sakes/1
  # DELETE /sakes/1.json
  def destroy
    @sake.destroy
    respond_to do |format|
      format.html { redirect_to sakes_url, notice: 'Sake was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sake
      @sake = Sake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sake_params
      params.require(:sake).permit(:prefecture, :brand, :item)
    end
end
