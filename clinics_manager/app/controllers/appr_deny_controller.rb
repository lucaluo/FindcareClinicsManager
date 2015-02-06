class ApprDenyController < ApplicationController
  def approve
    @par = params[:clinic] 
  end

  # def form_params
  #   params.require(:clinic_name)#.permit(:first_name, :last_name, :other_stuff)
  # end

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
