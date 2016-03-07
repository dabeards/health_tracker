require 'test_helper'

class CaloricIntakeTest < ActiveSupport::TestCase
  test "should sum consumed_calories" do
    assert_equal 19.98, CaloricIntake.consumed_calories
  end
end
