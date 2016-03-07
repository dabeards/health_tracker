require 'test_helper'

class PerformedExerciseTest < ActiveSupport::TestCase
  test "should get burned calories" do
    assert_equal 19.98, PerformedExercise.burned_calories
  end

  test "should get net calories of the day" do
    assert_equal 0, PerformedExercise.net_calories_of_the_day
  end

  test "should get exercise count for today" do
    assert_equal 2, PerformedExercise.exercise_count_for_today
  end
end
