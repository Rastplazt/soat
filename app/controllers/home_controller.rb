class HomeController < ApplicationController

	def index
		@person = Person.new
		@user = User.last
		if user_signed_in?
			@person_exist = Person.find_by(user_id: current_user.id)
		end
	end

	def register
		unless params[:search].nil?
			@vehicle = Vehicle.search(params[:search])
			
			if @vehicle.nil?
				@vehicle = Vehicle.new
				flash[:notice] = "Vehiculo no existe"
			else
			    $vehicle = @vehicle
			    respond_to do |format|
			      format.html { redirect_to  cover_path , notice: 'Vehiculo ya existe y esta asegurado' }
			      format.json { head :no_content }
			    end
			end

		end
	end

	def cover
		unless $vehicle.nil?
			@vehicle = Vehicle.new
			@vehicle = $vehicle
		end

	end

end
