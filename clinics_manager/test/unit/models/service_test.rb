require 'test_helper'

class ServiceTest < ActiveSupport::TestCase

  test "test service validate" do
    service1 = services(:service_one)
    service2 = services(:service_two)
    service2.service_abbr = nil
    assert service1.save
    assert service2.invalid?
  end
end