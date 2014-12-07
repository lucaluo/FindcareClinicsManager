require 'test_helper'

class ClinicInsertTest < ActiveSupport::TestCase

  test "should save clinic_insert" do
    clinic_insert = clinic_inserts(:clinic_insert_one)
    assert clinic_insert.save
  end
end
