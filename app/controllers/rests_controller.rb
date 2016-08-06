class RestsController < ApplicationController
	def edit
		@rest = current_user.rests.find(params[:id]) 
	end


	def update
    @rest = current_user.rests.find(params[:id])
    respond_to do |format|
      if @rest.update(rest_params)
        format.html { redirect_to user_rests_path(:user_id), notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @rest }
      else
        format.html { render :edit }
        format.json { render json: @rest.errors, status: :unprocessable_entity }
      end
    end
  end

	def create
		
		restaurant = params[:rest]
		@rest = current_user.rests.create(name: restaurant[:name], address: restaurant[:address], category: restaurant[:category])
		redirect_to user_rests_path(current_user)
	end

	def destroy
		
		@rest = current_user.rests.find(params[:id])
		@rest.destroy

		redirect_to user_rests_path(:user_id)
	end

	def index
		@rests = Rest.all
	end

	def new
		@rest = Rest.new
	end

	def all
		@rests = Rest.all
	end

	private

	def rest_params
    params.require(:rest).permit(:name, :address, :category)
  end
end
