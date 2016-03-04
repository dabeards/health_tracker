require 'test_helper'

class TakenStepsControllerTest < ActionController::TestCase
  setup do
    @taken_step = taken_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taken_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taken_step" do
    assert_difference('TakenStep.count') do
      post :create, taken_step: { step_date: @taken_step.exercise_date }
    end

    assert_redirected_to taken_step_path(assigns(:taken_step))
  end

  test "should show taken_step" do
    get :show, id: @taken_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taken_step
    assert_response :success
  end

  test "should update taken step" do
    patch :update, id: @taken_step, taken_step: { step_date: @taken_step.exercise_date }
    assert_redirected_to taken_step_path(assigns(:taken_step))
  end

  test "should destroy taken_step" do
    assert_difference('TakenStep.count', -1) do
      delete :destroy, id: @taken_step
    end

    assert_redirected_to taken_step_path
  end
end
