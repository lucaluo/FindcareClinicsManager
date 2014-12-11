require 'test_helper'

class ClinicInsertHourTest < ActiveSupport::TestCase

  test "should save clinic_insert_hour" do
    clinic_insert_hour = clinic_inserts(:clinic_insert_one)
    assert clinic_insert.save
  end
end
