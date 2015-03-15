class ListController < SecuredController

  def listNew
    clinic_insert = ClinicInsert.where('approve' => 'N')

    @h = createHash(clinic_insert)
    @title = 'List New Clinics'
    @num = 0
    render "list/list"
  end

  def listAll
  	clinic_insert = ClinicInsert.all

    @h = createHash(clinic_insert)
    @title = 'List All Clinics'
    @num = 1
    render "list/list"
  end

  def listApproved
  	clinic_insert = ClinicInsert.where('approve' => :Y)
    @h = createHash(clinic_insert)
    @title = 'List Approved Clinics'
    @num = 2
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
