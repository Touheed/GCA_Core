require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { cell_number: @user.cell_number, created_by: @user.created_by, email: @user.email, first_name: @user.first_name, last_name: @user.last_name, middle_name: @user.middle_name, password: @user.password, social_media_id: @user.social_media_id, social_media_provider: @user.social_media_provider, updated_by: @user.updated_by, user_name: @user.user_name }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { cell_number: @user.cell_number, created_by: @user.created_by, email: @user.email, first_name: @user.first_name, last_name: @user.last_name, middle_name: @user.middle_name, password: @user.password, social_media_id: @user.social_media_id, social_media_provider: @user.social_media_provider, updated_by: @user.updated_by, user_name: @user.user_name }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
