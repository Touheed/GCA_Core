require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post :create, player: { created_by: @player.created_by, created_date: @player.created_date, fairway_hits: @player.fairway_hits, gca_user_id: @player.gca_user_id, handicap: @player.handicap, handicap_status: @player.handicap_status, nick_name: @player.nick_name, putts: @player.putts, score: @player.score, status: @player.status, tee_id: @player.tee_id, updated_by: @player.updated_by, updated_date: @player.updated_date }
    end

    assert_redirected_to player_path(assigns(:player))
  end

  test "should show player" do
    get :show, id: @player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player
    assert_response :success
  end

  test "should update player" do
    patch :update, id: @player, player: { created_by: @player.created_by, created_date: @player.created_date, fairway_hits: @player.fairway_hits, gca_user_id: @player.gca_user_id, handicap: @player.handicap, handicap_status: @player.handicap_status, nick_name: @player.nick_name, putts: @player.putts, score: @player.score, status: @player.status, tee_id: @player.tee_id, updated_by: @player.updated_by, updated_date: @player.updated_date }
    assert_redirected_to player_path(assigns(:player))
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete :destroy, id: @player
    end

    assert_redirected_to players_path
  end
end
