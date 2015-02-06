class ResultsController < ApplicationController

	def index
	end

	def details
		#when add = 'true', new clinic. when add = 'false', update clinic
=begin
		if params[:add] == 'true'
			@transc_id = params[:transc_id]
			all_insert = ClinicInsert.find(@transc_id) 
			@clinic = Clinic.new
		else 
			@clinic_id = params[:clinic_id]
			all_insert = ClinicInsert.where(clinic_id: @clinic_id)
			@clinic = Clinic.find(@clinic_id)	
		end
=end

		@transc_id = params[:transc_id]
		@insert = ClinicInsert.find(@transc_id)
		@clinic_id = @insert.clinic_id
		all_insert = ClinicInsert.where(clinic_id: @clinic_id)
		@clinic = Clinic.find(@clinic_id)

		@clinic_insert = Array.new
		@clinic_insert_hour = Array.new
		@clinic_insert_service = Array.new

		all_insert.each do |insert| 
			@clinic_insert.push(ClinicInsert.find(insert.transc_id))

			clinic_insert_hour_single = ClinicInsertHour.where(transc_id: insert.transc_id)
			total = clinic_insert_hour_single.count
			while total > 0 do
				total -= 1
				@clinic_insert_hour.push(clinic_insert_hour_single[total])
			end

			clinic_insert_service_single = ClinicInsertService.where(transc_id: insert.transc_id)
			total = clinic_insert_service_single.count
			while total > 0 do
				total -= 1
				@clinic_insert_service.push(clinic_insert_service_single[total])
			end

		end

	    respond_to do |format|
	      format.html{ render 'results/details'}
	      format.json{ render json: @orders}
	    end
	end		

	
	def get_form
	end
end
