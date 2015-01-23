class ListController < ApplicationController
  def listNew
  	#1.select from the table ClinicInsert the unique clinic_id to be updated
  	clinic_update_id = ClinicInsert.select('clinic_id').where('update_status' => :UPDATE).where('approve' => 'N').map(&:'clinic_id').uniq
  	#2.select out those clinics
  	@clinic_update = Clinic.where('clinic_id' => clinic_update_id)

	#clinic_delete_id = ClinicInsert.select('clinic_id').where('update_status' => :DELETE).where('approve' => 'N').map(&:'clinic_id').uniq
  	#@clinic_delete = Clinic.where('clinic_id' => clinic_delete_id)

  	#select from the table ClinicInsert all the clinics that added
  	@add_clinic_inserts = ClinicInsert.where('update_status' => :ADD).where('approve' => 'N')
  end

  def listAll
  	@clinic_inserts=ClinicInsert.all
  end

  def listApproved
  	@clinic_inserts=ClinicInsert.where("approve = 'Y'").all
  end
end
