require 'test_helper'

class UserTournamentsControllerTest < ActionController::TestCase
  setup do
    @user_tournament = user_tournaments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_tournaments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_tournament" do
    assert_difference('UserTournament.count') do
      post :create, user_tournament: { authentication_token: @user_tournament.authentication_token, created_by: @user_tournament.created_by, created_date: @user_tournament.created_date, gca_user_id: @user_tournament.gca_user_id, golf_club_tournament_id: @user_tournament.golf_club_tournament_id, updated_by: @user_tournament.updated_by, updated_date: @user_tournament.updated_date }
    end

    assert_redirected_to user_tournament_path(assigns(:user_tournament))
  end

  test "should show user_tournament" do
    get :show, id: @user_tournament
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_tournament
    assert_response :success
  end

  test "should update user_tournament" do
    patch :update, id: @user_tournament, user_tournament: { authentication_token: @user_tournament.authentication_token, created_by: @user_tournament.created_by, created_date: @user_tournament.created_date, gca_user_id: @user_tournament.gca_user_id, golf_club_tournament_id: @user_tournament.golf_club_tournament_id, updated_by: @user_tournament.updated_by, updated_date: @user_tournament.updated_date }
    assert_redirected_to user_tournament_path(assigns(:user_tournament))
  end

  test "should destroy user_tournament" do
    assert_difference('UserTournament.count', -1) do
      delete :destroy, id: @user_tournament
    end

    assert_redirected_to user_tournaments_path
  end
end
