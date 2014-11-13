require 'test_helper'

class EconomiesControllerTest < ActionController::TestCase
  setup do
    @economy = economies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:economies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create economy" do
    assert_difference('Economy.count') do
      post :create, economy: { beehive_id: @economy.beehive_id, category_id: @economy.category_id, date: @economy.date, description: @economy.description, name: @economy.name, type_id: @economy.type_id, value: @economy.value }
    end

    assert_redirected_to economy_path(assigns(:economy))
  end

  test "should show economy" do
    get :show, id: @economy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @economy
    assert_response :success
  end

  test "should update economy" do
    patch :update, id: @economy, economy: { beehive_id: @economy.beehive_id, category_id: @economy.category_id, date: @economy.date, description: @economy.description, name: @economy.name, type_id: @economy.type_id, value: @economy.value }
    assert_redirected_to economy_path(assigns(:economy))
  end

  test "should destroy economy" do
    assert_difference('Economy.count', -1) do
      delete :destroy, id: @economy
    end

    assert_redirected_to economies_path
  end
end
