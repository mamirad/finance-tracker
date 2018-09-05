class UserstocksController<ApplicationController
	def create
		
		@stock = Userstock.create(user_id: params[:user] , stock_id: params[:stockid])
		if @stock.save
flash[:notic]="user stock has been added successfully"
render 'users/search'
		end
	end

end