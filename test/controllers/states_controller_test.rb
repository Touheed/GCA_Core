require 'test_helper'

class StatesControllerTest < ActionController::TestCase
  setup do
    @state = states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state" do
    assert_difference('State.count') do
      post :create, state: { created_by: @state.created_by, created_date: @state.created_date, state_name: @state.state_name, updated_by: @state.updated_by, updated_date: @state.updated_date }
    end

    assert_redirected_to state_path(assigns(:state))
  end

  test "should show state" do
    get :show, id: @state
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @state
    assert_response :success
  end

  test "should update state" do
    patch :update, id: @state, state: { created_by: @state.created_by, created_date: @state.created_date, state_name: @state.state_name, updated_by: @state.updated_by, updated_date: @state.updated_date }
    assert_redirected_to state_path(assigns(:state))
  end

  test "should destroy state" do
    assert_difference('State.count', -1) do
      delete :destroy, id: @state
    end

    assert_redirected_to states_path
  end
end
