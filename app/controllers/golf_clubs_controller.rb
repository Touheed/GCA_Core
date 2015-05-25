class GolfClubsController < InheritedResources::Base

  private

    def golf_club_params
      params.require(:golf_club).permit(:club_name, :city_id,:county_id,:created_by, :created_date, :updataed_by, :updated_date)
    end
end

