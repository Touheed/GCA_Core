require 'test_helper'

class GcaRolesControllerTest < ActionController::TestCase
  setup do
    @gca_role = gca_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gca_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gca_role" do
    assert_difference('GcaRole.count') do
      post :create, gca_role: { created_by: @gca_role.created_by, created_date: @gca_role.created_date, role_name: @gca_role.role_name, updated_by: @gca_role.updated_by, updated_date: @gca_role.updated_date }
    end

    assert_redirected_to gca_role_path(assigns(:gca_role))
  end

  test "should show gca_role" do
    get :show, id: @gca_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gca_role
    assert_response :success
  end

  test "should update gca_role" do
    patch :update, id: @gca_role, gca_role: { created_by: @gca_role.created_by, created_date: @gca_role.created_date, role_name: @gca_role.role_name, updated_by: @gca_role.updated_by, updated_date: @gca_role.updated_date }
    assert_redirected_to gca_role_path(assigns(:gca_role))
  end

  test "should destroy gca_role" do
    assert_difference('GcaRole.count', -1) do
      delete :destroy, id: @gca_role
    end

    assert_redirected_to gca_roles_path
  end
end
