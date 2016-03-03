require 'test_helper'

class CaloricIntakesControllerTest < ActionController::TestCase
  setup do
    @caloric_intake = caloric_intakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caloric_intakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caloric_intake" do
    assert_difference('CaloricIntake.count') do
      post :create, caloric_intake: { calories_date: @caloric_intake.calories_date, consumed_calories: @caloric_intake.consumed_calories }
    end

    assert_redirected_to caloric_intake_path(assigns(:caloric_intake))
  end

  test "should show caloric_intake" do
    get :show, id: @caloric_intake
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caloric_intake
    assert_response :success
  end

  test "should update caloric_intake" do
    patch :update, id: @caloric_intake, caloric_intake: { calories_date: @caloric_intake.calories_date, consumed_calories: @caloric_intake.consumed_calories }
    assert_redirected_to caloric_intake_path(assigns(:caloric_intake))
  end

  test "should destroy caloric_intake" do
    assert_difference('CaloricIntake.count', -1) do
      delete :destroy, id: @caloric_intake
    end

    assert_redirected_to caloric_intakes_path
  end
end
