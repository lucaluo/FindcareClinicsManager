class ListController < ApplicationController
  def listNew
  	clinic_update_id = ClinicInsert.select('clinic_id').where('update_status' => :UPDATE).map(&:'clinic_id').uniq
  	@clinic_update = Clinic.where('clinic_id' => clinic_update_id)
  	clinic_delete_id = ClinicInsert.select('clinic_id').where('update_status' => :DELETE).map(&:'clinic_id').uniq
  	@clinic_delete = Clinic.where('clinic_id' => clinic_delete_id)

  	@add_clinic_inserts = ClinicInsert.where('update_status' => :ADD)
  end

  def listAll
  	clinic_inserts_all=ClinicInsert.all
  	@clinic_inserts=removeDup(clinic_inserts_all)
  end

  def listApproved
    clinic_inserts_all=ClinicInsert.where("approve = 'Y'").all
    @clinic_inserts=removeDup(clinic_inserts_all)
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
