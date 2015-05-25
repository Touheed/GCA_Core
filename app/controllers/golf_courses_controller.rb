class GolfCoursesController < InheritedResources::Base

  private

    def golf_course_params
      params.require(:golf_course).permit(:golf_club_id, :course_name, :course_rating, :created_by, :created_date, :updataed_by, :updated_date,:langitude,:longitude,:course_slope,:total_hole, :state_id,:city_id, :course_address, :street,:zip,:county_id,:phone,:fax,:url,:architech, :status, :guest_policy, :founded)

    end
end

