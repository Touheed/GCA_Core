require 'test_helper'

class UserDetailsControllerTest < ActionController::TestCase
  setup do
    @user_detail = user_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_detail" do
    assert_difference('UserDetail.count') do
      post :create, user_detail: { created_by: @user_detail.created_by, created_date: @user_detail.created_date, handicap: @user_detail.handicap, handicap_status: @user_detail.handicap_status, precision: @user_detail.precision, tee_id: @user_detail.tee_id, updated_by: @user_detail.updated_by, updated_date: @user_detail.updated_date, user_id: @user_detail.user_id }
    end

    assert_redirected_to user_detail_path(assigns(:user_detail))
  end

  test "should show user_detail" do
    get :show, id: @user_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_detail
    assert_response :success
  end

  test "should update user_detail" do
    patch :update, id: @user_detail, user_detail: { created_by: @user_detail.created_by, created_date: @user_detail.created_date, handicap: @user_detail.handicap, handicap_status: @user_detail.handicap_status, precision: @user_detail.precision, tee_id: @user_detail.tee_id, updated_by: @user_detail.updated_by, updated_date: @user_detail.updated_date, user_id: @user_detail.user_id }
    assert_redirected_to user_detail_path(assigns(:user_detail))
  end

  test "should destroy user_detail" do
    assert_difference('UserDetail.count', -1) do
      delete :destroy, id: @user_detail
    end

    assert_redirected_to user_details_path
  end
end
