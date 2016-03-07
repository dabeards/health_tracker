require 'test_helper'

class WeightTest < ActiveSupport::TestCase
  test "should get last weight entered" do
    assert_equal 9.99, Weight.last_weight_entered 
  end
end
