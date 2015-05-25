require 'test_helper'

class GolfCourseFeaturesControllerTest < ActionController::TestCase
  setup do
    @golf_course_feature = golf_course_features(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:golf_course_features)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create golf_course_feature" do
    assert_difference('GolfCourseFeature.count') do
      post :create, golf_course_feature: { back_latitude: @golf_course_feature.back_latitude, back_longitude: @golf_course_feature.back_longitude, course_hole_id: @golf_course_feature.course_hole_id, created_by: @golf_course_feature.created_by, created_date: @golf_course_feature.created_date, description: @golf_course_feature.description, feature_type: @golf_course_feature.feature_type, front_latitude: @golf_course_feature.front_latitude, front_longitude: @golf_course_feature.front_longitude, golf_course_id: @golf_course_feature.golf_course_id, hole_number: @golf_course_feature.hole_number, show_marker: @golf_course_feature.show_marker, updated_by: @golf_course_feature.updated_by, updated_date: @golf_course_feature.updated_date }
    end

    assert_redirected_to golf_course_feature_path(assigns(:golf_course_feature))
  end

  test "should show golf_course_feature" do
    get :show, id: @golf_course_feature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @golf_course_feature
    assert_response :success
  end

  test "should update golf_course_feature" do
    patch :update, id: @golf_course_feature, golf_course_feature: { back_latitude: @golf_course_feature.back_latitude, back_longitude: @golf_course_feature.back_longitude, course_hole_id: @golf_course_feature.course_hole_id, created_by: @golf_course_feature.created_by, created_date: @golf_course_feature.created_date, description: @golf_course_feature.description, feature_type: @golf_course_feature.feature_type, front_latitude: @golf_course_feature.front_latitude, front_longitude: @golf_course_feature.front_longitude, golf_course_id: @golf_course_feature.golf_course_id, hole_number: @golf_course_feature.hole_number, show_marker: @golf_course_feature.show_marker, updated_by: @golf_course_feature.updated_by, updated_date: @golf_course_feature.updated_date }
    assert_redirected_to golf_course_feature_path(assigns(:golf_course_feature))
  end

  test "should destroy golf_course_feature" do
    assert_difference('GolfCourseFeature.count', -1) do
      delete :destroy, id: @golf_course_feature
    end

    assert_redirected_to golf_course_features_path
  end
end
