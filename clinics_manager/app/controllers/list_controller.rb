class ListController < ApplicationController
  def listNew
  	
  end

  def listAll
  	@clinic_inserts=ClinicInsert.all
  end

  def listApproved
  	@clinic_inserts=ClinicInsert.where("approve = 'Y'").all
  end
end
