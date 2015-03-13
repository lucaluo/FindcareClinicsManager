class ApprDenyController < SecuredController
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
      print @clinic.clinic_id
      @clinic_insert.approve = "Y"
      @clinic_insert.save
    end

    #update or add hours
    @hours = params[:hour]
    if @hours != nil
      @hours.each do |type, value|
        if type == "notype" then type = "" end
        @clinic_hour = Hours.where(:clinic_id => @clinic.clinic_id, :hour_type => type)
        if !@clinic_hour.empty?()
          @clinic_hour[0].update_attributes(value)
        else
          @new_clinic_hour = Hours.new(value)
          @new_clinic_hour.clinic_id = @clinic.clinic_id
          @new_clinic_hour.hour_type = type
          @new_clinic_hour.save
        end
      end
    end

    @clinic_services_add = params[:service_add]
    if @clinic_services_add != nil
      @clinic_services_add.each do |service_add|
        new_clinic_service = ClinicService.new
        new_clinic_service.service_abbr = service_add
        new_clinic_service.clinic_id = @clinic.clinic_id
        if ClinicService.where(:clinic_id => @clinic.clinic_id, :service_abbr => service_add).empty?
          new_clinic_service.save
        end
        puts new_clinic_service.inspect
      end
    end


    @clinic_services_delete = params[:service_delete]
    if @clinic_services_delete != nil
      @clinic_services_delete.each do |service_delete|
        clinic_service_to_delete = ClinicService.where(:clinic_id => @clinic.clinic_id, :service_abbr => service_delete)
        if !clinic_service_to_delete.empty?()
          clinic_service_to_delete[0].delete
        end
      end
    end

    redirect_to list_url
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
    
    redirect_to list_url
  end
end
