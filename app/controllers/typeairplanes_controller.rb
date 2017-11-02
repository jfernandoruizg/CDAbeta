class TypeairplanesController < ApplicationController
  before_action :set_typeairplane, only: [:show, :edit, :update, :destroy]

  # GET /typeairplanes
  # GET /typeairplanes.json
  def index
    @typeairplanes = Typeairplane.all
  end

  # GET /typeairplanes/1
  # GET /typeairplanes/1.json
  def show
  end

  # GET /typeairplanes/new
  def new
    @typeairplane = Typeairplane.new
  end

  # GET /typeairplanes/1/edit
  def edit
  end

  # POST /typeairplanes
  # POST /typeairplanes.json
  def create
    @typeairplane = Typeairplane.new(typeairplane_params)

    respond_to do |format|
      if @typeairplane.save
        format.html { redirect_to @typeairplane, notice: 'Typeairplane was successfully created.' }
        format.json { render :show, status: :created, location: @typeairplane }
      else
        format.html { render :new }
        format.json { render json: @typeairplane.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typeairplanes/1
  # PATCH/PUT /typeairplanes/1.json
  def update
    respond_to do |format|
      if @typeairplane.update(typeairplane_params)
        format.html { redirect_to @typeairplane, notice: 'Typeairplane was successfully updated.' }
        format.json { render :show, status: :ok, location: @typeairplane }
      else
        format.html { render :edit }
        format.json { render json: @typeairplane.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typeairplanes/1
  # DELETE /typeairplanes/1.json
  def destroy
    @typeairplane.destroy
    respond_to do |format|
      format.html { redirect_to typeairplanes_url, notice: 'Typeairplane was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typeairplane
      @typeairplane = Typeairplane.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typeairplane_params
      params.require(:typeairplane).permit(:tipo)
    end
end
