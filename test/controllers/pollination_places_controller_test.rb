require 'test_helper'

class PollinationPlacesControllerTest < ActionController::TestCase
  setup do
    @pollination_place = pollination_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pollination_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pollination_place" do
    assert_difference('PollinationPlace.count') do
      post :create, pollination_place: { address: @pollination_place.address, city: @pollination_place.city, country: @pollination_place.country, description: @pollination_place.description, elevation: @pollination_place.elevation, email_address: @pollination_place.email_address, end_date: @pollination_place.end_date, farm_name: @pollination_place.farm_name, farmer_first_name: @pollination_place.farmer_first_name, farmer_last_name: @pollination_place.farmer_last_name, latitude: @pollination_place.latitude, longitude: @pollination_place.longitude, phone: @pollination_place.phone, plant_id: @pollination_place.plant_id, start_date: @pollination_place.start_date, state: @pollination_place.state, zip: @pollination_place.zip }
    end

    assert_redirected_to pollination_place_path(assigns(:pollination_place))
  end

  test "should show pollination_place" do
    get :show, id: @pollination_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pollination_place
    assert_response :success
  end

  test "should update pollination_place" do
    patch :update, id: @pollination_place, pollination_place: { address: @pollination_place.address, city: @pollination_place.city, country: @pollination_place.country, description: @pollination_place.description, elevation: @pollination_place.elevation, email_address: @pollination_place.email_address, end_date: @pollination_place.end_date, farm_name: @pollination_place.farm_name, farmer_first_name: @pollination_place.farmer_first_name, farmer_last_name: @pollination_place.farmer_last_name, latitude: @pollination_place.latitude, longitude: @pollination_place.longitude, phone: @pollination_place.phone, plant_id: @pollination_place.plant_id, start_date: @pollination_place.start_date, state: @pollination_place.state, zip: @pollination_place.zip }
    assert_redirected_to pollination_place_path(assigns(:pollination_place))
  end

  test "should destroy pollination_place" do
    assert_difference('PollinationPlace.count', -1) do
      delete :destroy, id: @pollination_place
    end

    assert_redirected_to pollination_places_path
  end
end
