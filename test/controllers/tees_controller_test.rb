require 'test_helper'

class TeesControllerTest < ActionController::TestCase
  setup do
    @tee = tees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tee" do
    assert_difference('Tee.count') do
      post :create, tee: { created_by: @tee.created_by, created_date: @tee.created_date, description: @tee.description, updated_by: @tee.updated_by, updated_date: @tee.updated_date }
    end

    assert_redirected_to tee_path(assigns(:tee))
  end

  test "should show tee" do
    get :show, id: @tee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tee
    assert_response :success
  end

  test "should update tee" do
    patch :update, id: @tee, tee: { created_by: @tee.created_by, created_date: @tee.created_date, description: @tee.description, updated_by: @tee.updated_by, updated_date: @tee.updated_date }
    assert_redirected_to tee_path(assigns(:tee))
  end

  test "should destroy tee" do
    assert_difference('Tee.count', -1) do
      delete :destroy, id: @tee
    end

    assert_redirected_to tees_path
  end
end
