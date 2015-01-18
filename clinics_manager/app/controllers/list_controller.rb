class ListController < ApplicationController
  def listNew
  	
  end

  def listAll
  	@clinic_inserts=Clinic_insert.all
  end
end
