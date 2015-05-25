require 'test_helper'

class ScoreCardsControllerTest < ActionController::TestCase
  setup do
    @score_card = score_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:score_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create score_card" do
    assert_difference('ScoreCard.count') do
      post :create, score_card: { course_hole_id: @score_card.course_hole_id, created_by: @score_card.created_by, created_date: @score_card.created_date, fairway_hits: @score_card.fairway_hits, handicap_index: @score_card.handicap_index, putts: @score_card.putts, round_group_member_id: @score_card.round_group_member_id, round_id: @score_card.round_id, score: @score_card.score, updated_by: @score_card.updated_by, updated_date: @score_card.updated_date }
    end

    assert_redirected_to score_card_path(assigns(:score_card))
  end

  test "should show score_card" do
    get :show, id: @score_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @score_card
    assert_response :success
  end

  test "should update score_card" do
    patch :update, id: @score_card, score_card: { course_hole_id: @score_card.course_hole_id, created_by: @score_card.created_by, created_date: @score_card.created_date, fairway_hits: @score_card.fairway_hits, handicap_index: @score_card.handicap_index, putts: @score_card.putts, round_group_member_id: @score_card.round_group_member_id, round_id: @score_card.round_id, score: @score_card.score, updated_by: @score_card.updated_by, updated_date: @score_card.updated_date }
    assert_redirected_to score_card_path(assigns(:score_card))
  end

  test "should destroy score_card" do
    assert_difference('ScoreCard.count', -1) do
      delete :destroy, id: @score_card
    end

    assert_redirected_to score_cards_path
  end
end
