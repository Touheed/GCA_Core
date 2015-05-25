require 'test_helper'

class GcaUsersControllerTest < ActionController::TestCase
  setup do
    @gca_user = gca_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gca_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gca_user" do
    assert_difference('GcaUser.count') do
      post :create, gca_user: { cell_number: @gca_user.cell_number, created_by: @gca_user.created_by, created_date: @gca_user.created_date, email: @gca_user.email, first_name: @gca_user.first_name, last_name: @gca_user.last_name, middle_name: @gca_user.middle_name, password: @gca_user.password, social_media_id: @gca_user.social_media_id, social_media_provider: @gca_user.social_media_provider, updataed_by: @gca_user.updataed_by, updated_date: @gca_user.updated_date, user_name: @gca_user.user_name }
    end

    assert_redirected_to gca_user_path(assigns(:gca_user))
  end

  test "should show gca_user" do
    get :show, id: @gca_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gca_user
    assert_response :success
  end

  test "should update gca_user" do
    patch :update, id: @gca_user, gca_user: { cell_number: @gca_user.cell_number, created_by: @gca_user.created_by, created_date: @gca_user.created_date, email: @gca_user.email, first_name: @gca_user.first_name, last_name: @gca_user.last_name, middle_name: @gca_user.middle_name, password: @gca_user.password, social_media_id: @gca_user.social_media_id, social_media_provider: @gca_user.social_media_provider, updataed_by: @gca_user.updataed_by, updated_date: @gca_user.updated_date, user_name: @gca_user.user_name }
    assert_redirected_to gca_user_path(assigns(:gca_user))
  end

  test "should destroy gca_user" do
    assert_difference('GcaUser.count', -1) do
      delete :destroy, id: @gca_user
    end

    assert_redirected_to gca_users_path
  end
end
