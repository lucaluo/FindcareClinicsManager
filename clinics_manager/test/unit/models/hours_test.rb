require 'test_helper'

class HoursTest < ActiveSupport::TestCase

  test "should save hours" do
    hours = hours(:hours_one)
    assert hours.save
  end

  test "shouldn't save hours because hour_type can't be nil" do
    hours = hours(:hours_one)
    hours.hour_type=nil
    assert !hours.save
  end

  test "shouldn't save hours because clinic_id can't be nil" do
    hours = hours(:hours_one)
    hours.clinic_id = nil
    assert !hours.save
  end

  test "shouldn't save hours because dummy_hour_pk can't be nil" do
    hours = hours(:hours_one)
    hours.dummy_hour_pk = nil
    assert !hours.save
  end

  test "should delete hours" do
    hours = hours(:hours_one)
    assert hours.delete
  end

end