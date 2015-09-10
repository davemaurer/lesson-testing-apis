require './test/test_helper'

class SunlightServiceTest < ActiveSupport::TestCase
  test '#legislators' do
    service = SunlightService.new
    legislators = service.legislators(gender: 'F')

    assert_equal 20, legislators.count
  end
end
