require 'test_helper'

class GroupsControllerTest < ActionController::TestCase
  setup do
    @group = groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group" do
    assert_difference('Group.count') do
      post :create, group: { created_by: @group.created_by, created_date: @group.created_date, group_name: @group.group_name, group_owner: @group.group_owner, group_type: @group.group_type, updated_by: @group.updated_by, updated_date: @group.updated_date }
    end

    assert_redirected_to group_path(assigns(:group))
  end

  test "should show group" do
    get :show, id: @group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group
    assert_response :success
  end

  test "should update group" do
    patch :update, id: @group, group: { created_by: @group.created_by, created_date: @group.created_date, group_name: @group.group_name, group_owner: @group.group_owner, group_type: @group.group_type, updated_by: @group.updated_by, updated_date: @group.updated_date }
    assert_redirected_to group_path(assigns(:group))
  end

  test "should destroy group" do
    assert_difference('Group.count', -1) do
      delete :destroy, id: @group
    end

    assert_redirected_to groups_path
  end
end
