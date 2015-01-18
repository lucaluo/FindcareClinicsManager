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
  end
end