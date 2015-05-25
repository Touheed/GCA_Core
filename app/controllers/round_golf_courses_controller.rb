class RoundGolfCoursesController < InheritedResources::Base

  private

    def round_golf_course_params
      params.require(:round_golf_course).permit(:round_id, :golf_course_id, :created_by, :created_date, :updataed_by, :updated_date)
    end
end

