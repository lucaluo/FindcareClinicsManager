require 'test_helper'

class ListControllerTest < ActionController::TestCase
  test "should get listNew" do
    get :listNew
    assert_response :success
  end

  test "test listNew hashtable correctness" do
  	listTestHelper(:listNew, 'N')
  end

  test "test listAll hashtable correctness" do
  	listTestHelper(:listAll, 'all')
  end

  test "test listApproved hashtable correctness" do
  	listTestHelper(:listApproved, 'Y')
  end

  def listTestHelper(controller, approve_status)
  	idealRecordNum = 0
  	if approve_status == 'all'
  		idealRecordNum = ClinicInsert.all.count
  	else
  		idealRecordNum = ClinicInsert.where('approve' => approve_status).count
  	end
  	get controller
  	#cash the hash intance @h passed to the view
  	hashInstance = assigns(:h)

  	realRecordNum = 0
  	hashInstance.each do |key, value|
  		#check whether the value in the hash table is an instance of Array
  		assert(value.is_a?(Array))
			realRecordNum += value.length 
			value.all? do |x|
				#test all item in the hashtable is not approved
				if approve_status != 'all' 
					assert(x.approve == approve_status)
				end 
				assert(x.clinic_id == key || nil)
			end
  	end
  	assert_equal(realRecordNum, idealRecordNum)
  end

end