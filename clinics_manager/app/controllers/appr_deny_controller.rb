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
      @clinic = Clinic.new(@form_params)
      @clinic.save
      @clinic_inserts = ClinicInsert.where("clinic_id = ? AND approve = ?", @clinic.clinic_id, "N")
      @clinic_inserts.each do |ci|
        ci.approve = "Y"
        ci.save
      end
    end

    @hours = params[:hour]
    @hours.each do |type, value|
      @clinic_hour = Hours.find()
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