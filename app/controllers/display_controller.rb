class DisplayController < ApplicationController
	# GET /display
	def index
		@ordenes = Order.find(:all, :order => 'created_at DESC')

		respond_to do |format|
			format.html # index.html.erb
		end
	end
	
	
	def detail
		@orden = Order.find(params[:id])
		
		respond_to do |format|
			format.html # detalle.html.erb
		end
	end
	
end
