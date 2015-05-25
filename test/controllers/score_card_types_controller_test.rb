require 'test_helper'

class ScoreCardTypesControllerTest < ActionController::TestCase
  setup do
    @score_card_type = score_card_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:score_card_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create score_card_type" do
    assert_difference('ScoreCardType.count') do
      post :create, score_card_type: { created_by: @score_card_type.created_by, created_date: @score_card_type.created_date, desc: @score_card_type.desc, updated_by: @score_card_type.updated_by, updated_date: @score_card_type.updated_date }
    end

    assert_redirected_to score_card_type_path(assigns(:score_card_type))
  end

  test "should show score_card_type" do
    get :show, id: @score_card_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @score_card_type
    assert_response :success
  end

  test "should update score_card_type" do
    patch :update, id: @score_card_type, score_card_type: { created_by: @score_card_type.created_by, created_date: @score_card_type.created_date, desc: @score_card_type.desc, updated_by: @score_card_type.updated_by, updated_date: @score_card_type.updated_date }
    assert_redirected_to score_card_type_path(assigns(:score_card_type))
  end

  test "should destroy score_card_type" do
    assert_difference('ScoreCardType.count', -1) do
      delete :destroy, id: @score_card_type
    end

    assert_redirected_to score_card_types_path
  end
end
