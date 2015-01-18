class ListController < ApplicationController
  def listNew
  	@clinic_inserts=Clinic_insert.all
  end
end
