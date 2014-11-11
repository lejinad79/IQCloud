require 'test_helper'

class ApiarySetupsControllerTest < ActionController::TestCase
  setup do
    @apiary_setup = apiary_setups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apiary_setups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apiary_setup" do
    assert_difference('ApiarySetup.count') do
      post :create, apiary_setup: {  }
    end

    assert_redirected_to apiary_setup_path(assigns(:apiary_setup))
  end

  test "should show apiary_setup" do
    get :show, id: @apiary_setup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apiary_setup
    assert_response :success
  end

  test "should update apiary_setup" do
    patch :update, id: @apiary_setup, apiary_setup: {  }
    assert_redirected_to apiary_setup_path(assigns(:apiary_setup))
  end

  test "should destroy apiary_setup" do
    assert_difference('ApiarySetup.count', -1) do
      delete :destroy, id: @apiary_setup
    end

    assert_redirected_to apiary_setups_path
  end
end
