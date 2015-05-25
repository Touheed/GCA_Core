require 'test_helper'

class RoundGolfCoursesControllerTest < ActionController::TestCase
  setup do
    @round_golf_course = round_golf_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:round_golf_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create round_golf_course" do
    assert_difference('RoundGolfCourse.count') do
      post :create, round_golf_course: { created_by: @round_golf_course.created_by, created_date: @round_golf_course.created_date, golf_course_id: @round_golf_course.golf_course_id, round_id: @round_golf_course.round_id, updated_by: @round_golf_course.updated_by, updated_date: @round_golf_course.updated_date }
    end

    assert_redirected_to round_golf_course_path(assigns(:round_golf_course))
  end

  test "should show round_golf_course" do
    get :show, id: @round_golf_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @round_golf_course
    assert_response :success
  end

  test "should update round_golf_course" do
    patch :update, id: @round_golf_course, round_golf_course: { created_by: @round_golf_course.created_by, created_date: @round_golf_course.created_date, golf_course_id: @round_golf_course.golf_course_id, round_id: @round_golf_course.round_id, updated_by: @round_golf_course.updated_by, updated_date: @round_golf_course.updated_date }
    assert_redirected_to round_golf_course_path(assigns(:round_golf_course))
  end

  test "should destroy round_golf_course" do
    assert_difference('RoundGolfCourse.count', -1) do
      delete :destroy, id: @round_golf_course
    end

    assert_redirected_to round_golf_courses_path
  end
end
