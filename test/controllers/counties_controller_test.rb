require 'test_helper'

class CountiesControllerTest < ActionController::TestCase
  setup do
    @county = counties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:counties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create county" do
    assert_difference('County.count') do
      post :create, county: { county_name: @county.county_name, created_by: @county.created_by, created_date: @county.created_date, updated_by: @county.updated_by, updated_date: @county.updated_date }
    end

    assert_redirected_to county_path(assigns(:county))
  end

  test "should show county" do
    get :show, id: @county
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @county
    assert_response :success
  end

  test "should update county" do
    patch :update, id: @county, county: { county_name: @county.county_name, created_by: @county.created_by, created_date: @county.created_date, updated_by: @county.updated_by, updated_date: @county.updated_date }
    assert_redirected_to county_path(assigns(:county))
  end

  test "should destroy county" do
    assert_difference('County.count', -1) do
      delete :destroy, id: @county
    end

    assert_redirected_to counties_path
  end
end
