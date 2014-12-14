require 'test_helper'

class ClinicTest < ActiveSupport::TestCase
  test "test clinic validate" do
    clinic1 = clinics(:clinic_one)
    assert clinic1.save

    clinic2 = clinics(:clinic_two)
    clinic2.city = nil
    assert clinic2.invalid?

    clinic3 = clinics(:clinic_three)
    assert clinic3.save
    # clinic_service = ClinicService.create(clinic_id: clinic3.clinic_id, service_abbr: "ACUT")
    # clinic_service = ClinicService.create(clinic_id: clinic3.clinic_id, service_abbr: "ACU")
    # assert_not_nil clinic3.services.find("ACUT")
    # assert_not_nil clinic3.services.find("ACU")
  end
end