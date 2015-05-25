require 'test_helper'

class CourseHolesControllerTest < ActionController::TestCase
  setup do
    @course_hole = course_holes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_holes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_hole" do
    assert_difference('CourseHole.count') do
      post :create, course_hole: { created_by: @course_hole.created_by, created_date: @course_hole.created_date, golf_course_id: @course_hole.golf_course_id, par: @course_hole.par, stroke_index: @course_hole.stroke_index, updated_by: @course_hole.updated_by, updated_date: @course_hole.updated_date }
    end

    assert_redirected_to course_hole_path(assigns(:course_hole))
  end

  test "should show course_hole" do
    get :show, id: @course_hole
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_hole
    assert_response :success
  end

  test "should update course_hole" do
    patch :update, id: @course_hole, course_hole: { created_by: @course_hole.created_by, created_date: @course_hole.created_date, golf_course_id: @course_hole.golf_course_id, par: @course_hole.par, stroke_index: @course_hole.stroke_index, updated_by: @course_hole.updated_by, updated_date: @course_hole.updated_date }
    assert_redirected_to course_hole_path(assigns(:course_hole))
  end

  test "should destroy course_hole" do
    assert_difference('CourseHole.count', -1) do
      delete :destroy, id: @course_hole
    end

    assert_redirected_to course_holes_path
  end
end
