require 'test_helper'

class ClinicInsertTest < ActiveSupport::TestCase
	# no_presence_array = ["transc_id", "user_id", "approve", "update_status", "last_updated", "clinic_name", "street_addr1", "city", "state", "zipcode"]

  test "should save clinic_insert" do
    clinic_insert = clinic_inserts(:clinic_insert_one)
    assert clinic_insert.save
  end

  test "should delete clinic_insert" do
  	clinic_insert = clinic_inserts(:clinic_insert_two)
  	assert clinic_insert.delete
  end

  test "should not save with transc_id being nil" do
		clinic_insert = clinic_inserts(:clinic_insert_one)
		clinic_insert.transc_id = nil
		assert !clinic_insert.save
	end

	test "should not save with user_id being nil" do
		clinic_insert = clinic_inserts(:clinic_insert_one)
		clinic_insert.user_id = nil
		assert !clinic_insert.save
	end

	test "should not save with approve being nil" do
		clinic_insert = clinic_inserts(:clinic_insert_one)
		clinic_insert.approve = nil
		assert !clinic_insert.save
	end

	test "should not save with update_status being nil" do
		clinic_insert = clinic_inserts(:clinic_insert_one)
		clinic_insert.update_status = nil
		assert !clinic_insert.save
	end

	test "should not save with last_updated being nil" do
		clinic_insert = clinic_inserts(:clinic_insert_one)
		clinic_insert.last_updated = nil
		assert !clinic_insert.save
	end

	test "should not save with clinic_name being nil" do
		clinic_insert = clinic_inserts(:clinic_insert_one)
		clinic_insert.clinic_name = nil
		assert !clinic_insert.save
	end

	test "should not save with street_addr1 being nil" do
		clinic_insert = clinic_inserts(:clinic_insert_one)
		clinic_insert.street_addr1 = nil
		assert !clinic_insert.save
	end

	test "should not save with city being nil" do
		clinic_insert = clinic_inserts(:clinic_insert_one)
		clinic_insert.city = nil
		assert !clinic_insert.save
	end

	test "should not save with state being nil" do
		clinic_insert = clinic_inserts(:clinic_insert_one)
		clinic_insert.state = nil
		assert !clinic_insert.save
	end

	test "should not save with zipcode being nil" do
		clinic_insert = clinic_inserts(:clinic_insert_one)
		clinic_insert.zipcode = nil
		assert !clinic_insert.save
	end

	test "value of payment_call_clinic should only be Y or N" do
		clinic_insert = clinic_inserts(:clinic_insert_one)
		clinic_insert.payment_call_clinic = "W"
		assert !clinic_insert.save
	end

end
