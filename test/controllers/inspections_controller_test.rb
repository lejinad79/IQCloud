require 'test_helper'

class InspectionsControllerTest < ActionController::TestCase
  setup do
    @inspection = inspections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inspections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inspection" do
    assert_difference('Inspection.count') do
      post :create, inspection: { a_qulet_shift: @inspection.a_qulet_shift, alert_info: @inspection.alert_info, beehive_id: @inspection.beehive_id, disease_id: @inspection.disease_id, firs_spring_inspection: @inspection.firs_spring_inspection, hive_condition: @inspection.hive_condition, inspection_before_winter: @inspection.inspection_before_winter, inspection_date: @inspection.inspection_date, name: @inspection.name, note_info: @inspection.note_info, number_of_closed_broods: @inspection.number_of_closed_broods, number_of_frames_with_brood: @inspection.number_of_frames_with_brood, number_of_frames_with_honey: @inspection.number_of_frames_with_honey, number_of_frames_with_pollen: @inspection.number_of_frames_with_pollen, number_of_opened_broods: @inspection.number_of_opened_broods, quality_nut: @inspection.quality_nut, society_strength: @inspection.society_strength, swarm_drive: @inspection.swarm_drive, the_forced: @inspection.the_forced, the_nature_of_the_bees: @inspection.the_nature_of_the_bees }
    end

    assert_redirected_to inspection_path(assigns(:inspection))
  end

  test "should show inspection" do
    get :show, id: @inspection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inspection
    assert_response :success
  end

  test "should update inspection" do
    patch :update, id: @inspection, inspection: { a_qulet_shift: @inspection.a_qulet_shift, alert_info: @inspection.alert_info, beehive_id: @inspection.beehive_id, disease_id: @inspection.disease_id, firs_spring_inspection: @inspection.firs_spring_inspection, hive_condition: @inspection.hive_condition, inspection_before_winter: @inspection.inspection_before_winter, inspection_date: @inspection.inspection_date, name: @inspection.name, note_info: @inspection.note_info, number_of_closed_broods: @inspection.number_of_closed_broods, number_of_frames_with_brood: @inspection.number_of_frames_with_brood, number_of_frames_with_honey: @inspection.number_of_frames_with_honey, number_of_frames_with_pollen: @inspection.number_of_frames_with_pollen, number_of_opened_broods: @inspection.number_of_opened_broods, quality_nut: @inspection.quality_nut, society_strength: @inspection.society_strength, swarm_drive: @inspection.swarm_drive, the_forced: @inspection.the_forced, the_nature_of_the_bees: @inspection.the_nature_of_the_bees }
    assert_redirected_to inspection_path(assigns(:inspection))
  end

  test "should destroy inspection" do
    assert_difference('Inspection.count', -1) do
      delete :destroy, id: @inspection
    end

    assert_redirected_to inspections_path
  end
end
