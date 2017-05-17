class BusesController < ApplicationController
  before_action :set_bus, only: [:show, :edit, :update, :destroy]

  # GET /buses
  def index
    @buses = Bus.all

  end

  # GET /buses/1
  def show
  end

  # GET /buses/new
  def new
    @bus = Bus.new
  end

  # GET /buses/1/edit
  def edit
  end

  # POST /buses
  def create
    @bus = Bus.new(bus_params)

  
      if @bus.save
        redirect_to @bus, notice: 'Bus was successfully created.' 
      else
        render :new 
      
      end
  end

  # PATCH/PUT /buses/1
  def update
      if @bus.update(bus_params)
        redirect_to @bus, notice: 'Bus was successfully updated.' 
      else
        render :edit 
      end
    
  end

  # DELETE /buses/1
  def destroy
    @bus.destroy
    
    redirect_to buses_url, notice: 'Bus was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bus
      @bus = Bus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.поля длябазы
    def bus_params
      params.require(:bus).permit(:number, :bus_station, :bus_time_start, :bus_time_stop, :tickets_places)
    end
end
