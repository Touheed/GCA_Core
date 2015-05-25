class FavouriteCoursesController < InheritedResources::Base

  private

    def favourite_course_params
      params.require(:favourite_course).permit(:golf_course_id, :gca_user_id, :created_by, :created_date, :updataed_by, :updated_date)
    end
end

