require 'test_helper'

class FeedingsControllerTest < ActionController::TestCase
  setup do
    @feeding = feedings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feedings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feeding" do
    assert_difference('Feeding.count') do
      post :create, feeding: { beehive_id: @feeding.beehive_id, date: @feeding.date, food_type_id: @feeding.food_type_id, name: @feeding.name, notes: @feeding.notes, quantity: @feeding.quantity, quantity_unit_id: @feeding.quantity_unit_id, supplements_id: @feeding.supplements_id, value: @feeding.value }
    end

    assert_redirected_to feeding_path(assigns(:feeding))
  end

  test "should show feeding" do
    get :show, id: @feeding
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feeding
    assert_response :success
  end

  test "should update feeding" do
    patch :update, id: @feeding, feeding: { beehive_id: @feeding.beehive_id, date: @feeding.date, food_type_id: @feeding.food_type_id, name: @feeding.name, notes: @feeding.notes, quantity: @feeding.quantity, quantity_unit_id: @feeding.quantity_unit_id, supplements_id: @feeding.supplements_id, value: @feeding.value }
    assert_redirected_to feeding_path(assigns(:feeding))
  end

  test "should destroy feeding" do
    assert_difference('Feeding.count', -1) do
      delete :destroy, id: @feeding
    end

    assert_redirected_to feedings_path
  end
end
