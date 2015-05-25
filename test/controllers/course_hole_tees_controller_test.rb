require 'test_helper'

class CourseHoleTeesControllerTest < ActionController::TestCase
  setup do
    @course_hole_tee = course_hole_tees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_hole_tees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_hole_tee" do
    assert_difference('CourseHoleTee.count') do
      post :create, course_hole_tee: { course_hole_id: @course_hole_tee.course_hole_id, created_by: @course_hole_tee.created_by, created_date: @course_hole_tee.created_date, latitude: @course_hole_tee.latitude, longitude: @course_hole_tee.longitude, tee_id: @course_hole_tee.tee_id, updated_by: @course_hole_tee.updated_by, updated_date: @course_hole_tee.updated_date }
    end

    assert_redirected_to course_hole_tee_path(assigns(:course_hole_tee))
  end

  test "should show course_hole_tee" do
    get :show, id: @course_hole_tee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_hole_tee
    assert_response :success
  end

  test "should update course_hole_tee" do
    patch :update, id: @course_hole_tee, course_hole_tee: { course_hole_id: @course_hole_tee.course_hole_id, created_by: @course_hole_tee.created_by, created_date: @course_hole_tee.created_date, latitude: @course_hole_tee.latitude, longitude: @course_hole_tee.longitude, tee_id: @course_hole_tee.tee_id, updated_by: @course_hole_tee.updated_by, updated_date: @course_hole_tee.updated_date }
    assert_redirected_to course_hole_tee_path(assigns(:course_hole_tee))
  end

  test "should destroy course_hole_tee" do
    assert_difference('CourseHoleTee.count', -1) do
      delete :destroy, id: @course_hole_tee
    end

    assert_redirected_to course_hole_tees_path
  end
end
