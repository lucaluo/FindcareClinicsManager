require 'test_helper'

class ClinicServiceTest < ActiveSupport::TestCase
  test "clinic service validate" do
    clinic_service1 = clinic_services(:clinic_service_one)
    clinic_service2 = clinic_services(:clinic_service_two)
    clinic_service2.clinic_id = nil
    assert clinic_service1.save
    assert clinic_service2.invalid?

    clinic = clinics(:clinic_three)
    clinic_service = ClinicService.create(:clinic_id=> clinic, :service_abbr=> "ACUT")
    assert_not_nil clinic.service.find("ACUT")
  end
end