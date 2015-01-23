require 'test_helper'

class ClinicInsertServiceTest < ActiveSupport::TestCase
  test "should ClinicInsertService be empty" do
    clinic_insert_service0 = ClinicInsertService.new
    assert clinic_insert_service0.invalid?

    clinic_insert_service0.update_status = :ADD
    clinic_insert_service0.dummy_insert_service_pk = 1
    clinic_insert_service0.transc_id = 1
    clinic_insert_service0.service_abbr = "BBBB"
    assert clinic_insert_service0.valid?
  end

  test "should save clinic_insert_service" do
    clinic_insert_service1 = clinic_insert_services(:clinic_insert_service_one)
    assert clinic_insert_service1.save
  end

  test "should delete clinic_insert_service" do
  	clinic_insert_service3 = clinic_insert_services(:clinic_insert_service_two)
    assert clinic_insert_service3.delete
  end

  test "should validate presence of update update_status" do
    clinic_insert_service2 = clinic_insert_services(:clinic_insert_service_one)
    clinic_insert_service2.update_status = nil
    assert !clinic_insert_service2.save
  end

  test "should validate presence of update transc_id" do
    clinic_insert_service4 = clinic_insert_services(:clinic_insert_service_one)
    clinic_insert_service4.transc_id = nil
    assert !clinic_insert_service4.save
  end

  test "should validate presence of update service_abbr" do
    clinic_insert_service5 = clinic_insert_services(:clinic_insert_service_one)
    clinic_insert_service5.service_abbr = nil
    assert !clinic_insert_service5.save
  end

  test "should validate presence of update dummy_insert_service_pk" do
    clinic_insert_service6 = clinic_insert_services(:clinic_insert_service_one)
    clinic_insert_service6.dummy_insert_service_pk = nil
    assert !clinic_insert_service6.save
  end
  
  test "should be able to access with clinic_insert" do
    clinic_insert = clinic_inserts(:clinic_insert_one)
    ClinicInsertService.create(:transc_id=> clinic_insert, :service_abbr=> "ACUT")
    assert_not_nil clinic_insert.clinic_insert_service
  end

end
