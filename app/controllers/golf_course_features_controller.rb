class GolfCourseFeaturesController < InheritedResources::Base

  private

    def golf_course_feature_params
      params.require(:golf_course_feature).permit(:hole_number, :feature_type, :group_owner, :show_marker, :front_latitude, :front_longitude, :back_latitude, :back_longitude, :description, :created_by, :created_date, :updated_by, :updated_date, :golf_course_id, :course_hole_id)
    end
end

