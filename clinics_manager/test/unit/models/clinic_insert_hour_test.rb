require 'test_helper'

class ClinicInsertHourTest < ActiveSupport::TestCase

  test "should save clinic_insert_hour" do
    clinic_insert_hours = clinic_insert_hour(:clinic_insert_hour_two)
    assert clinic_insert_hours.save
  end

  test "should not save clinic_insert_hour with transc_id being nil" do
    clinic_insert_hours = clinic_insert_hour(:clinic_insert_hour_two)
    clinic_insert_hours.transc_id = nil;
    assert !clinic_insert_hours.save
  end

  test "should not save clinic_insert_hour with hour_type being nil" do
    clinic_insert_hours = clinic_insert_hour(:clinic_insert_hour_two)
    clinic_insert_hours.hour_type = nil;
    assert !clinic_insert_hours.save
  end
 
  test "should not save clinic_insert_hour with update_status being nil" do
    clinic_insert_hours = clinic_insert_hour(:clinic_insert_hour_two)
    clinic_insert_hours.update_status = nil;
    assert !clinic_insert_hours.save
  end 
  
  test "should not save clinic_insert_hour with dummy_insert_hour_pk being nil" do
    clinic_insert_hours = clinic_insert_hour(:clinic_insert_hour_two)
    clinic_insert_hours.dummy_insert_hour_pk = nil;
    assert !clinic_insert_hours.save
  end

  test "should delete clinic_insert_hour" do
    clinic_insert_hours = clinic_insert_hour(:clinic_insert_hour_one)
    assert clinic_insert_hours.delete
  end

end
