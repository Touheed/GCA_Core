class GolfClubTournamentsController < InheritedResources::Base

  private

    def golf_club_tournament_params
      params.require(:golf_club_tournament).permit(:golf_club_id, :name, :city, :county_id, :title, :description, :status, :starting_hole, :created_by, :created_date, :updated_by, :updated_date)
    end
end

