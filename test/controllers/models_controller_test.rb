require 'test_helper'

class ModelsControllerTest < ActionController::TestCase
  setup do
    @model = models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create model" do
    assert_difference('Model.count') do
      post :create, model: { UserDetail: @model.UserDetail, created_by: @model.created_by, created_date: @model.created_date, handicap: @model.handicap, handicap_status: @model.handicap_status, precision: @model.precision, tee_id: @model.tee_id, updated_by: @model.updated_by, updated_date: @model.updated_date, user_id: @model.user_id }
    end

    assert_redirected_to model_path(assigns(:model))
  end

  test "should show model" do
    get :show, id: @model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @model
    assert_response :success
  end

  test "should update model" do
    patch :update, id: @model, model: { UserDetail: @model.UserDetail, created_by: @model.created_by, created_date: @model.created_date, handicap: @model.handicap, handicap_status: @model.handicap_status, precision: @model.precision, tee_id: @model.tee_id, updated_by: @model.updated_by, updated_date: @model.updated_date, user_id: @model.user_id }
    assert_redirected_to model_path(assigns(:model))
  end

  test "should destroy model" do
    assert_difference('Model.count', -1) do
      delete :destroy, id: @model
    end

    assert_redirected_to models_path
  end
end
