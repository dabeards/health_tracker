require 'test_helper'

class ExercisesPerformedsControllerTest < ActionController::TestCase
  setup do
    @exercises_performed = exercises_performeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercises_performeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercises_performed" do
    assert_difference('ExercisesPerformed.count') do
      post :create, exercises_performed: { calories_burned: @exercises_performed.calories_burned, excercise_date: @exercises_performed.excercise_date }
    end

    assert_redirected_to exercises_performed_path(assigns(:exercises_performed))
  end

  test "should show exercises_performed" do
    get :show, id: @exercises_performed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercises_performed
    assert_response :success
  end

  test "should update exercises_performed" do
    patch :update, id: @exercises_performed, exercises_performed: { calories_burned: @exercises_performed.calories_burned, excercise_date: @exercises_performed.excercise_date }
    assert_redirected_to exercises_performed_path(assigns(:exercises_performed))
  end

  test "should destroy exercises_performed" do
    assert_difference('ExercisesPerformed.count', -1) do
      delete :destroy, id: @exercises_performed
    end

    assert_redirected_to exercises_performeds_path
  end
end
