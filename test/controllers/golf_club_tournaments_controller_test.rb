require 'test_helper'

class GolfClubTournamentsControllerTest < ActionController::TestCase
  setup do
    @golf_club_tournament = golf_club_tournaments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:golf_club_tournaments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create golf_club_tournament" do
    assert_difference('GolfClubTournament.count') do
      post :create, golf_club_tournament: { city: @golf_club_tournament.city, created_by: @golf_club_tournament.created_by, created_date: @golf_club_tournament.created_date, golf_club_id: @golf_club_tournament.golf_club_id, locality: @golf_club_tournament.locality, name: @golf_club_tournament.name, starting_hole: @golf_club_tournament.starting_hole, status: @golf_club_tournament.status, title: @golf_club_tournament.title, updated_by: @golf_club_tournament.updated_by, updated_date: @golf_club_tournament.updated_date }
    end

    assert_redirected_to golf_club_tournament_path(assigns(:golf_club_tournament))
  end

  test "should show golf_club_tournament" do
    get :show, id: @golf_club_tournament
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @golf_club_tournament
    assert_response :success
  end

  test "should update golf_club_tournament" do
    patch :update, id: @golf_club_tournament, golf_club_tournament: { city: @golf_club_tournament.city, created_by: @golf_club_tournament.created_by, created_date: @golf_club_tournament.created_date, golf_club_id: @golf_club_tournament.golf_club_id, locality: @golf_club_tournament.locality, name: @golf_club_tournament.name, starting_hole: @golf_club_tournament.starting_hole, status: @golf_club_tournament.status, title: @golf_club_tournament.title, updated_by: @golf_club_tournament.updated_by, updated_date: @golf_club_tournament.updated_date }
    assert_redirected_to golf_club_tournament_path(assigns(:golf_club_tournament))
  end

  test "should destroy golf_club_tournament" do
    assert_difference('GolfClubTournament.count', -1) do
      delete :destroy, id: @golf_club_tournament
    end

    assert_redirected_to golf_club_tournaments_path
  end
end
