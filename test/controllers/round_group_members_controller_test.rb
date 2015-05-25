require 'test_helper'

class RoundGroupMembersControllerTest < ActionController::TestCase
  setup do
    @round_group_member = round_group_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:round_group_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create round_group_member" do
    assert_difference('RoundGroupMember.count') do
      post :create, round_group_member: { created_by: @round_group_member.created_by, created_date: @round_group_member.created_date, round_group_id: @round_group_member.round_group_id, updated_by: @round_group_member.updated_by, updated_date: @round_group_member.updated_date, user_id: @round_group_member.user_id }
    end

    assert_redirected_to round_group_member_path(assigns(:round_group_member))
  end

  test "should show round_group_member" do
    get :show, id: @round_group_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @round_group_member
    assert_response :success
  end

  test "should update round_group_member" do
    patch :update, id: @round_group_member, round_group_member: { created_by: @round_group_member.created_by, created_date: @round_group_member.created_date, round_group_id: @round_group_member.round_group_id, updated_by: @round_group_member.updated_by, updated_date: @round_group_member.updated_date, user_id: @round_group_member.user_id }
    assert_redirected_to round_group_member_path(assigns(:round_group_member))
  end

  test "should destroy round_group_member" do
    assert_difference('RoundGroupMember.count', -1) do
      delete :destroy, id: @round_group_member
    end

    assert_redirected_to round_group_members_path
  end
end
