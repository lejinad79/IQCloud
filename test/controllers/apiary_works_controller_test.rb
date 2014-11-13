require 'test_helper'

class ApiaryWorksControllerTest < ActionController::TestCase
  setup do
    @apiary_work = apiary_works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apiary_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apiary_work" do
    assert_difference('ApiaryWork.count') do
      post :create, apiary_work: { apiary_id: @apiary_work.apiary_id, date: @apiary_work.date, description: @apiary_work.description, hives_id: @apiary_work.hives_id, name: @apiary_work.name, notes: @apiary_work.notes, work_information_type_id: @apiary_work.work_information_type_id }
    end

    assert_redirected_to apiary_work_path(assigns(:apiary_work))
  end

  test "should show apiary_work" do
    get :show, id: @apiary_work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apiary_work
    assert_response :success
  end

  test "should update apiary_work" do
    patch :update, id: @apiary_work, apiary_work: { apiary_id: @apiary_work.apiary_id, date: @apiary_work.date, description: @apiary_work.description, hives_id: @apiary_work.hives_id, name: @apiary_work.name, notes: @apiary_work.notes, work_information_type_id: @apiary_work.work_information_type_id }
    assert_redirected_to apiary_work_path(assigns(:apiary_work))
  end

  test "should destroy apiary_work" do
    assert_difference('ApiaryWork.count', -1) do
      delete :destroy, id: @apiary_work
    end

    assert_redirected_to apiary_works_path
  end
end
