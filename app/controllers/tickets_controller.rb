class TicketsController < ApplicationController

	before_action :set_ticket, only: [:show]
  # GET /tickets/1
  def show
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # POST /tickets
  def create
    @ticket = Ticket.new(ticket_params)

      if @ticket.save
        redirect_to @ticket, notice: 'Ticket was successfully created.' 
      else
        render :new 
      end
  end


  	 private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end


	 # Never trust parameters from the scary internet, only allow the white list through.поля длябазы
	def ticket_params
	  params.require(:ticket).permit(:bus_id)
	end
end
