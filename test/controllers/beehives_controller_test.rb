require 'test_helper'

class BeehivesControllerTest < ActionController::TestCase
  setup do
    @beehive = beehives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beehives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beehive" do
    assert_difference('Beehive.count') do
      post :create, beehive: { address: @beehive.address, apiary_id: @beehive.apiary_id, beehive_type_id: @beehive.beehive_type_id, colony_quality: @beehive.colony_quality, colony_source_id: @beehive.colony_source_id, colony_strength: @beehive.colony_strength, email_address: @beehive.email_address, from_apiary_id: @beehive.from_apiary_id, from_beehive_id: @beehive.from_beehive_id, group_id: @beehive.group_id, installed: @beehive.installed, name: @beehive.name, notes: @beehive.notes, notes: @beehive.notes, phone: @beehive.phone, place: @beehive.place, queen_name: @beehive.queen_name, race: @beehive.race, seller_first_name: @beehive.seller_first_name, seller_last_name: @beehive.seller_last_name, supers_id: @beehive.supers_id }
    end

    assert_redirected_to beehive_path(assigns(:beehive))
  end

  test "should show beehive" do
    get :show, id: @beehive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beehive
    assert_response :success
  end

  test "should update beehive" do
    patch :update, id: @beehive, beehive: { address: @beehive.address, apiary_id: @beehive.apiary_id, beehive_type_id: @beehive.beehive_type_id, colony_quality: @beehive.colony_quality, colony_source_id: @beehive.colony_source_id, colony_strength: @beehive.colony_strength, email_address: @beehive.email_address, from_apiary_id: @beehive.from_apiary_id, from_beehive_id: @beehive.from_beehive_id, group_id: @beehive.group_id, installed: @beehive.installed, name: @beehive.name, notes: @beehive.notes, notes: @beehive.notes, phone: @beehive.phone, place: @beehive.place, queen_name: @beehive.queen_name, race: @beehive.race, seller_first_name: @beehive.seller_first_name, seller_last_name: @beehive.seller_last_name, supers_id: @beehive.supers_id }
    assert_redirected_to beehive_path(assigns(:beehive))
  end

  test "should destroy beehive" do
    assert_difference('Beehive.count', -1) do
      delete :destroy, id: @beehive
    end

    assert_redirected_to beehives_path
  end
end
