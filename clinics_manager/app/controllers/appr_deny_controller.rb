class ApprDenyController < ApplicationController
  def approve
    @form_params = params[:clinic]
    @clinic_insert = ClinicInsert.find(params[:transc_id])
    if @clinic_insert.update_status == "UPDATE"
      @clinic = Clinic.find(@clinic_insert[:clinic_id])
      @clinic.update_attributes(@form_params)
      @clinic.save
      @clinic_inserts = ClinicInsert.where("clinic_id = ? AND approve = ?", @clinic.clinic_id, "N")
      @clinic_inserts.each do |ci|
        ci.approve = "Y"
        ci.save
      end
    elsif @clinic_insert.update_status == "ADD"
      @clinic = Clinic.new
      @clinic.update_attributes(@form_params)
      @clinic.save
      @clinic_insert.approve = "Y"
    end

    #update or add hours
    @hours = params[:hour]
    if @hours != nil
      @hours.each do |type, value|
        @clinic_hour = Hours.where(:clinic_id => @clinic.clinic_id, :hour_type => type)
        if @clinic_hour != nil && @clinic_hour[0] != nil
          @clinic_hour[0].update_attributes(value)
        elsif @clinic_hour[0] == nil
          @new_clinic_hour = Hours.new(value)
          @new_clinic_hour.clinic_id = @clinic.clinic_id
          @new_clinic_hour.save
        end
      end
    end

    @clinic_services_add = params[:service_add]
    if @clinic_services_add != nil
      @clinic_services_add.each do |service_add|
        new_clinic_service = Clinic_Service.new
        new_clinic_service.update_attributes(service_add)
        new_clinic_service.save
      end
    end
    @clinic_services_delete = params[:service_delete]
    if @clinic_services_delete != nil
      @clinic_services_delete.each do |service_delete|
        clinic_service_to_delete = Clinic_Service.where("clinic_id = ? AND service_abbr = ?", @clinic.clinic_id, service_delete[:service_abbr])
        clinic_service_to_delete.delete
      end
    end
    
  end


  def deny
    @clinic_insert = ClinicInsert.find(params[:transc_id])
    if @clinic_insert.update_status == "UPDATE"
      @clinic = Clinic.find(@clinic_insert.clinic_id)
      @clinic_inserts = ClinicInsert.where("clinic_id = ? AND approve = ?", @clinic.clinic_id, "N")
      @clinic_inserts.each do |ci|
        ci.approve = "Y"
        ci.save
      end
    elsif @clinic_insert.update_status == "ADD"
      @clinic_insert.approve = "Y"
      @clinic_insert.save
    end
  end
end
