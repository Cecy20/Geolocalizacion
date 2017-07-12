class GeolosController < ApplicationController
  before_action :set_geolo, only: [:show, :edit, :update, :destroy]

  # GET /geolos
  # GET /geolos.json
  def index
    @geolos = Geolo.all
  end

  # GET /geolos/1
  # GET /geolos/1.json
  def show
  end

  # GET /geolos/new
  def new
    @geolo = Geolo.new
  end

  # GET /geolos/1/edit
  def edit
  end

  # POST /geolos
  # POST /geolos.json
  def create
    @geolo = Geolo.new(geolo_params)

    respond_to do |format|
      if @geolo.save
        format.html { redirect_to @geolo, notice: 'Geolo was successfully created.' }
        format.json { render :show, status: :created, location: @geolo }
      else
        format.html { render :new }
        format.json { render json: @geolo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geolos/1
  # PATCH/PUT /geolos/1.json
  def update
    respond_to do |format|
      if @geolo.update(geolo_params)
        format.html { redirect_to @geolo, notice: 'Geolo was successfully updated.' }
        format.json { render :show, status: :ok, location: @geolo }
      else
        format.html { render :edit }
        format.json { render json: @geolo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geolos/1
  # DELETE /geolos/1.json
  def destroy
    @geolo.destroy
    respond_to do |format|
      format.html { redirect_to geolos_url, notice: 'Geolo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geolo
      @geolo = Geolo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def geolo_params
      params.require(:geolo).permit(:latitude, :longitude, :address, :description, :title)
    end
end
