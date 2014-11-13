require 'test_helper'

class BeehiveGroupsControllerTest < ActionController::TestCase
  setup do
    @beehive_group = beehive_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beehive_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beehive_group" do
    assert_difference('BeehiveGroup.count') do
      post :create, beehive_group: { apiary_id: @beehive_group.apiary_id, beehive_group_type_id: @beehive_group.beehive_group_type_id, description: @beehive_group.description, elevation: @beehive_group.elevation, group_type_id: @beehive_group.group_type_id, latitude: @beehive_group.latitude, longitude: @beehive_group.longitude, name: @beehive_group.name, notes: @beehive_group.notes }
    end

    assert_redirected_to beehive_group_path(assigns(:beehive_group))
  end

  test "should show beehive_group" do
    get :show, id: @beehive_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beehive_group
    assert_response :success
  end

  test "should update beehive_group" do
    patch :update, id: @beehive_group, beehive_group: { apiary_id: @beehive_group.apiary_id, beehive_group_type_id: @beehive_group.beehive_group_type_id, description: @beehive_group.description, elevation: @beehive_group.elevation, group_type_id: @beehive_group.group_type_id, latitude: @beehive_group.latitude, longitude: @beehive_group.longitude, name: @beehive_group.name, notes: @beehive_group.notes }
    assert_redirected_to beehive_group_path(assigns(:beehive_group))
  end

  test "should destroy beehive_group" do
    assert_difference('BeehiveGroup.count', -1) do
      delete :destroy, id: @beehive_group
    end

    assert_redirected_to beehive_groups_path
  end
end
