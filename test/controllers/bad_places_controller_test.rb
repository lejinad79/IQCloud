require 'test_helper'

class BadPlacesControllerTest < ActionController::TestCase
  setup do
    @bad_place = bad_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bad_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bad_place" do
    assert_difference('BadPlace.count') do
      post :create, bad_place: { description: @bad_place.description, elevation: @bad_place.elevation, latitude: @bad_place.latitude, longitude: @bad_place.longitude, name: @bad_place.name }
    end

    assert_redirected_to bad_place_path(assigns(:bad_place))
  end

  test "should show bad_place" do
    get :show, id: @bad_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bad_place
    assert_response :success
  end

  test "should update bad_place" do
    patch :update, id: @bad_place, bad_place: { description: @bad_place.description, elevation: @bad_place.elevation, latitude: @bad_place.latitude, longitude: @bad_place.longitude, name: @bad_place.name }
    assert_redirected_to bad_place_path(assigns(:bad_place))
  end

  test "should destroy bad_place" do
    assert_difference('BadPlace.count', -1) do
      delete :destroy, id: @bad_place
    end

    assert_redirected_to bad_places_path
  end
end
