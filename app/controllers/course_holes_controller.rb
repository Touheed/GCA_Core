class CourseHolesController < InheritedResources::Base

  private

    def course_hole_params
      params.require(:course_hole).permit(:golf_course_id, :par, :stroke_index, :course_hole_order,:hole_latitude,:hole_longitude,:yardage, :bearing,:created_by, :created_date, :updataed_by, :updated_date)
    end
end

