require 'test_helper'

class FavouriteCoursesControllerTest < ActionController::TestCase
  setup do
    @favourite_course = favourite_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favourite_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favourite_course" do
    assert_difference('FavouriteCourse.count') do
      post :create, favourite_course: { created_by: @favourite_course.created_by, created_date: @favourite_course.created_date, golf_course_id: @favourite_course.golf_course_id, updated_by: @favourite_course.updated_by, updated_date: @favourite_course.updated_date, user_id: @favourite_course.user_id }
    end

    assert_redirected_to favourite_course_path(assigns(:favourite_course))
  end

  test "should show favourite_course" do
    get :show, id: @favourite_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favourite_course
    assert_response :success
  end

  test "should update favourite_course" do
    patch :update, id: @favourite_course, favourite_course: { created_by: @favourite_course.created_by, created_date: @favourite_course.created_date, golf_course_id: @favourite_course.golf_course_id, updated_by: @favourite_course.updated_by, updated_date: @favourite_course.updated_date, user_id: @favourite_course.user_id }
    assert_redirected_to favourite_course_path(assigns(:favourite_course))
  end

  test "should destroy favourite_course" do
    assert_difference('FavouriteCourse.count', -1) do
      delete :destroy, id: @favourite_course
    end

    assert_redirected_to favourite_courses_path
  end
end
