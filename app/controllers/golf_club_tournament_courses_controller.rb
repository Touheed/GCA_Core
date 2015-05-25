class GolfClubTournamentCoursesController < InheritedResources::Base

  private

    def golf_club_tournament_course_params
      params.require(:golf_club_tournament_course).permit(:golf_course_id, :golf_club_tournament_id, :created_by, :created_date, :updated_by, :updated_date)
    end
end

