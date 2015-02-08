class ListController < ApplicationController
  def listNew
  	#clinic_update_id = ClinicInsert.select('clinic_id').where('approve' => :N).where('update_status' => :UPDATE).map(&:'clinic_id').uniq
  	#@clinic_update = Clinic.where('clinic_id' => clinic_update_id)
  	
	  #clinic_delete_id = ClinicInsert.select('clinic_id').where('update_status' => :DELETE).where('approve' => 'N').map(&:'clinic_id').uniq
  	#@clinic_delete = Clinic.where('clinic_id' => clinic_delete_id)

  	#select from the table ClinicInsert all the clinics that added
  	#@add_clinic_inserts = ClinicInsert.where('update_status' => :ADD).where('approve' => 'N')
    clinic_insert = ClinicInsert.where('approve' => 'N')

    @h = createHash(clinic_insert)
    @title = 'List New Clinics'
    render "list/list"
  end

  def listAll
  	clinic_insert = ClinicInsert.all

    @h = createHash(clinic_insert)
    @title = 'List All Clinics'
    render "list/list"
  end

  def listApproved
  	clinic_insert = ClinicInsert.where('approve' => :Y)
    @h = createHash(clinic_insert)
    @title = 'List Approved Clinics'
    render "list/list"
  end

  def createHash(item_list)
    #create a hash table mapping 
    #from clinic id to a list of insert record
    h = Hash.new {|h, k| h[k] = []}
    item_list.each do |item|
      h[item[:clinic_id]] << item
    end
    return h.sort_by { |key, value| key || 0 }
  end

end
