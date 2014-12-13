require 'test_helper'

class ClinicInsertHourTest < ActiveSupport::TestCase

  test "should save clinic_insert_hour" do
    clinic_insert_hours_2 = clinic_insert_hour(:clinic_insert_hours_two)
    assert clinic_insert_hours_2.save
  end

  test "should not save clinic_insert_hour with transc_id being nil" do
    clinic_insert_hours_2 = clinic_insert_hour(:clinic_insert_hours_two)
    clinic_insert_hours_2.transc_id = nil;
    assert !clinic_insert_hours_2.save
  end

  test "should not save clinic_insert_hour with hour_type being nil" do
    clinic_insert_hours_2 = clinic_insert_hour(:clinic_insert_hours_two)
    clinic_insert_hours_2.hour_type = nil;
    assert !clinic_insert_hours_2.save
  end
 
  test "should not save clinic_insert_hour with update_status being nil" do
    clinic_insert_hours_2 = clinic_insert_hour(:clinic_insert_hours_two)
    clinic_insert_hours_2.update_status = nil;
    assert !clinic_insert_hours_2.save
  end 
  
  test "should not save clinic_insert_hour with dummy_insert_hour_pk being nil" do
    clinic_insert_hours_2 = clinic_insert_hour(:clinic_insert_hours_two)
    clinic_insert_hours_2.dummy_insert_hour_pk = nil;
    assert !clinic_insert_hours_2.save
  end

  test "should delete clinic_insert_hour" do
    clinic_insert_hours_1 = clinic_insert_hour(:clinic_insert_hours_one)
    assert clinic_insert_hours_1.delete
  end

end
