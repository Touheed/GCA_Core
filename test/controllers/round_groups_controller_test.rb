require 'test_helper'

class RoundGroupsControllerTest < ActionController::TestCase
  setup do
    @round_group = round_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:round_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create round_group" do
    assert_difference('RoundGroup.count') do
      post :create, round_group: { created_by: @round_group.created_by, created_date: @round_group.created_date, group_name: @round_group.group_name, group_owner: @round_group.group_owner, group_type: @round_group.group_type, round_id: @round_group.round_id, updated_by: @round_group.updated_by, updated_date: @round_group.updated_date }
    end

    assert_redirected_to round_group_path(assigns(:round_group))
  end

  test "should show round_group" do
    get :show, id: @round_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @round_group
    assert_response :success
  end

  test "should update round_group" do
    patch :update, id: @round_group, round_group: { created_by: @round_group.created_by, created_date: @round_group.created_date, group_name: @round_group.group_name, group_owner: @round_group.group_owner, group_type: @round_group.group_type, round_id: @round_group.round_id, updated_by: @round_group.updated_by, updated_date: @round_group.updated_date }
    assert_redirected_to round_group_path(assigns(:round_group))
  end

  test "should destroy round_group" do
    assert_difference('RoundGroup.count', -1) do
      delete :destroy, id: @round_group
    end

    assert_redirected_to round_groups_path
  end
end
