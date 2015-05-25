class CourseHoleTeesController < InheritedResources::Base

  private

    def course_hole_tee_params
      params.require(:course_hole_tee).permit(:tee_id, :course_hole_id, :latitude, :longitude, :created_by, :created_date, :updataed_by, :updated_date)
    end
end

