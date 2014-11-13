require 'test_helper'

class HarvestsControllerTest < ActionController::TestCase
  setup do
    @harvest = harvests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:harvests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create harvest" do
    assert_difference('Harvest.count') do
      post :create, harvest: { beehive_id: @harvest.beehive_id, date: @harvest.date, description: @harvest.description, name: @harvest.name, quantity: @harvest.quantity, quantity_unit_id: @harvest.quantity_unit_id, type_id: @harvest.type_id, value: @harvest.value }
    end

    assert_redirected_to harvest_path(assigns(:harvest))
  end

  test "should show harvest" do
    get :show, id: @harvest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @harvest
    assert_response :success
  end

  test "should update harvest" do
    patch :update, id: @harvest, harvest: { beehive_id: @harvest.beehive_id, date: @harvest.date, description: @harvest.description, name: @harvest.name, quantity: @harvest.quantity, quantity_unit_id: @harvest.quantity_unit_id, type_id: @harvest.type_id, value: @harvest.value }
    assert_redirected_to harvest_path(assigns(:harvest))
  end

  test "should destroy harvest" do
    assert_difference('Harvest.count', -1) do
      delete :destroy, id: @harvest
    end

    assert_redirected_to harvests_path
  end
end
