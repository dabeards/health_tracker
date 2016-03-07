require 'test_helper'

class StepCountTest < ActiveSupport::TestCase
  test "should get total steps taken today" do
    assert_equal 2, StepCount.total_steps_taken_today
  end
end
