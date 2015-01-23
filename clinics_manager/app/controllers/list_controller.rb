class ListController < ApplicationController
  def listNew
  	clinic_update_id = ClinicInsert.select('clinic_id').where('update_status' => :UPDATE).where('approve' => 'N').map(&:'clinic_id').uniq
  	@clinic_update = Clinic.where('clinic_id' => clinic_update_id)
  	clinic_delete_id = ClinicInsert.select('clinic_id').where('update_status' => :DELETE).where('approve' => 'N').map(&:'clinic_id').uniq
  	@clinic_delete = Clinic.where('clinic_id' => clinic_delete_id)

  	@add_clinic_inserts = ClinicInsert.where('update_status' => :ADD).where('approve' => 'N')
  end

  def listAll
  	@clinic_inserts=ClinicInsert.all
  end

  def listApproved
  	@clinic_inserts=ClinicInsert.where("approve = 'Y'").all
  end
end
