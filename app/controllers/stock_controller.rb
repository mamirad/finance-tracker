class StockController<ApplicationController
	def search
		begin
			looked_up_stock = StockQuote::Stock.quote(params[:stock])
			 @stock = Stock.new(ticker: looked_up_stock.symbol,name: looked_up_stock.company_name,last_price: looked_up_stock.latest_price)
				 if @stock.save
				 	respond_to do |format|
				 		format.js{render partial: 'users/resultt'}

				 	end
				  				end
			rescue Exception => e
						 # render json: {
					  #     error: e.to_s
					  #   }, status: :not_found
	  		# flash[:notic]="invalid input"
	  		# render 'users/search'
	  		respond_to do |format|
				 		format.js{render :'users/msg1'}

				 	end

		end
 	end
end