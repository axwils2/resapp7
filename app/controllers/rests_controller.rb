class RestsController < ApplicationController
	def create
		
		restaurant = params[:rest]
		@rest = current_user.rests.create(name: restaurant[:name], address: restaurant[:address])
		redirect_to user_rests_path(current_user)
	end

	def destroy
		@owner = Owner.find(params[:owner_id])
		@rest = @owner.rests.find(params[:id])
		@rest.destroy
		redirect_to owner_path(@owner)
	end

	def index
		@rests = Rest.all
	end

	def new
		@rest = Rest.new
	end

	def rest_params
    params.require(:rest).permit(:name, :address)
  end
end
