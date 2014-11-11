require 'test_helper'

class ApiaryParametersSetupsControllerTest < ActionController::TestCase
  setup do
    @apiary_parameters_setup = apiary_parameters_setups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apiary_parameters_setups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apiary_parameters_setup" do
    assert_difference('ApiaryParametersSetup.count') do
      post :create, apiary_parameters_setup: {  }
    end

    assert_redirected_to apiary_parameters_setup_path(assigns(:apiary_parameters_setup))
  end

  test "should show apiary_parameters_setup" do
    get :show, id: @apiary_parameters_setup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apiary_parameters_setup
    assert_response :success
  end

  test "should update apiary_parameters_setup" do
    patch :update, id: @apiary_parameters_setup, apiary_parameters_setup: {  }
    assert_redirected_to apiary_parameters_setup_path(assigns(:apiary_parameters_setup))
  end

  test "should destroy apiary_parameters_setup" do
    assert_difference('ApiaryParametersSetup.count', -1) do
      delete :destroy, id: @apiary_parameters_setup
    end

    assert_redirected_to apiary_parameters_setups_path
  end
end
