class ListController < ApplicationController
  def listNew
  	
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
