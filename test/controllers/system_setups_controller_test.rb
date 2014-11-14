require 'test_helper'

class SystemSetupsControllerTest < ActionController::TestCase
  setup do
    @system_setup = system_setups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:system_setups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create system_setup" do
    assert_difference('SystemSetup.count') do
      post :create, system_setup: { apiary_id: @system_setup.apiary_id, beekeeper_id: @system_setup.beekeeper_id, name: @system_setup.name }
    end

    assert_redirected_to system_setup_path(assigns(:system_setup))
  end

  test "should show system_setup" do
    get :show, id: @system_setup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @system_setup
    assert_response :success
  end

  test "should update system_setup" do
    patch :update, id: @system_setup, system_setup: { apiary_id: @system_setup.apiary_id, beekeeper_id: @system_setup.beekeeper_id, name: @system_setup.name }
    assert_redirected_to system_setup_path(assigns(:system_setup))
  end

  test "should destroy system_setup" do
    assert_difference('SystemSetup.count', -1) do
      delete :destroy, id: @system_setup
    end

    assert_redirected_to system_setups_path
  end
end
