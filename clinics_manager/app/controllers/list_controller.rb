class ListController < ApplicationController
  def listNew
  	clinic_update_id = ClinicInsert.select('clinic_id').where('approve' => :N).where('update_status' => :UPDATE).map(&:'clinic_id').uniq
  	@clinic_update = Clinic.where('clinic_id' => clinic_update_id)
  	
	  #clinic_delete_id = ClinicInsert.select('clinic_id').where('update_status' => :DELETE).where('approve' => 'N').map(&:'clinic_id').uniq
  	#@clinic_delete = Clinic.where('clinic_id' => clinic_delete_id)

  	#select from the table ClinicInsert all the clinics that added
  	@add_clinic_inserts = ClinicInsert.where('update_status' => :ADD).where('approve' => 'N')
    @title = "List New"
    @header = "List New Clinics"
    render "list/listAll"
  end

  def listAll
  	clinic_update_id = ClinicInsert.select('clinic_id').where('update_status' => :UPDATE).map(&:'clinic_id').uniq
  	@clinic_update = Clinic.where('clinic_id' => clinic_update_id)
  	clinic_delete_id = ClinicInsert.select('clinic_id').where('update_status' => :DELETE).map(&:'clinic_id').uniq
  	@clinic_delete = Clinic.where('clinic_id' => clinic_delete_id)

  	@add_clinic_inserts = ClinicInsert.where('update_status' => :ADD)
    @title = "List New"
    @header = "List New Clinics"
    render "list/listAll"
  end

  def listApproved
  	clinic_update_id = ClinicInsert.select('clinic_id').where('approve' => :Y).where('update_status' => :UPDATE).map(&:'clinic_id').uniq
  	@clinic_update = Clinic.where('clinic_id' => clinic_update_id)
  	clinic_delete_id = ClinicInsert.select('clinic_id').where('approve' => :Y).where('update_status' => :DELETE).map(&:'clinic_id').uniq
  	@clinic_delete = Clinic.where('clinic_id' => clinic_delete_id)

  	@add_clinic_inserts = ClinicInsert.where('approve' => :Y).where('update_status' => :ADD)
    @title = "List New"
    @header = "List New Clinics"
    render "list/listAll"
  end

  private
  def removeDup(clinics)
  	uniques = []
    clinics.each_with_index do |r, i|
  	  id = uniques.collect {|e| e[:clinic_id]}
  	  if !id.include? r[:clinic_id] || r[:update_status]=='ADD'
  	    uniques.push(r)
      else
        clinics[i] = nil
      end
    end
    clinics.compact!
    return clinics
  end

end
