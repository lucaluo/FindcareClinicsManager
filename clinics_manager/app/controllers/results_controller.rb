class ResultsController < ApplicationController

	def index
	end

	def details
		@clinic_insert = Array.new
		@clinic_insert_hour = Hash.new
		all_hour_type = Hours.select('hour_type').uniq
		all_hour_type.each do |hour_type|
			@clinic_insert_hour[hour_type.hour_type] = Array.new
		end

		@transc_id = params[:transc_id]
		single_insert = ClinicInsert.find(@transc_id)
		clinic_id = single_insert.clinic_id
		if clinic_id != nil
			@origin_hour = Hash.new
			@origin_clinic = Clinic.find(clinic_id)
			@clinic = Clinic.find(clinic_id)
			@origin_service = ClinicService.select('service_abbr').where(:clinic_id => clinic_id)

			origin_hour_single = Hours.where(:clinic_id => clinic_id)
			origin_hour_single.each do |origin_hour|
				@origin_hour[origin_hour.hour_type] = origin_hour
			end
		else
			@origin_hour = nil
			@origin_clinic = nil
			@clinic = Clinic.new
			@origin_hour = nil
		end
		all_insert = ClinicInsert.where(:clinic_id => clinic_id) 



		@clinic_insert_service = Hash.new
		@clinic_insert_service['ADD'] = Array.new
		@clinic_insert_service['DELETE'] = Array.new
		delete_duplicate_hash = Hash.new
		delete_duplicate_hash['ADD'] = Hash.new
		delete_duplicate_hash['DELETE'] = Hash.new

		all_insert.each do |insert| 
			@clinic_insert.push(ClinicInsert.find(insert.transc_id))

			clinic_insert_hour_single = ClinicInsertHour.where(:transc_id => insert.transc_id)

			clinic_insert_hour_single.each do |insert_hour|
				@clinic_insert_hour[insert_hour.hour_type].push(insert_hour)
			end

			clinic_insert_service_single = ClinicInsertService.where(:transc_id => insert.transc_id)

			clinic_insert_service_single.each do |insert_service| 
				if not delete_duplicate_hash[insert_service.update_status].has_key?(insert_service.service_abbr)
					@clinic_insert_service[insert_service.update_status].push(insert_service.service_abbr)
					delete_duplicate_hash[insert_service.update_status][insert_service.service_abbr] = true;
				end
			end
		end

		delete_duplicate_hash.clear

	    respond_to do |format|
	      format.html{ render 'results/details'}
	      format.json{ render :json => @orders}
	    end
	end		
end

