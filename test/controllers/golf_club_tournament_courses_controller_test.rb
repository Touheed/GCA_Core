require 'test_helper'

class GolfClubTournamentCoursesControllerTest < ActionController::TestCase
  setup do
    @golf_club_tournament_course = golf_club_tournament_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:golf_club_tournament_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create golf_club_tournament_course" do
    assert_difference('GolfClubTournamentCourse.count') do
      post :create, golf_club_tournament_course: { created_by: @golf_club_tournament_course.created_by, created_date: @golf_club_tournament_course.created_date, golf_club_tournament_id: @golf_club_tournament_course.golf_club_tournament_id, golf_course_id: @golf_club_tournament_course.golf_course_id, updated_by: @golf_club_tournament_course.updated_by, updated_date: @golf_club_tournament_course.updated_date }
    end

    assert_redirected_to golf_club_tournament_course_path(assigns(:golf_club_tournament_course))
  end

  test "should show golf_club_tournament_course" do
    get :show, id: @golf_club_tournament_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @golf_club_tournament_course
    assert_response :success
  end

  test "should update golf_club_tournament_course" do
    patch :update, id: @golf_club_tournament_course, golf_club_tournament_course: { created_by: @golf_club_tournament_course.created_by, created_date: @golf_club_tournament_course.created_date, golf_club_tournament_id: @golf_club_tournament_course.golf_club_tournament_id, golf_course_id: @golf_club_tournament_course.golf_course_id, updated_by: @golf_club_tournament_course.updated_by, updated_date: @golf_club_tournament_course.updated_date }
    assert_redirected_to golf_club_tournament_course_path(assigns(:golf_club_tournament_course))
  end

  test "should destroy golf_club_tournament_course" do
    assert_difference('GolfClubTournamentCourse.count', -1) do
      delete :destroy, id: @golf_club_tournament_course
    end

    assert_redirected_to golf_club_tournament_courses_path
  end
end
