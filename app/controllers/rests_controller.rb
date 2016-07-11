class RestsController < ApplicationController
	def create
		@owner = Owner.find(params[:owner_id])
		restaurant = params[:rest]
		@rest = @owner.rests.create(name: restaurant[:name], address: restaurant[:address])
		redirect_to owner_path(@owner)
	end

	def destroy
		@owner = Owner.find(params[:owner_id])
		@rest = @owner.rests.find(params[:id])
		@rest.destroy
		redirect_to owner_path(@owner)
	end

	def rest_params
      params.require(:rest).permit(:name, :address)
    end
end
