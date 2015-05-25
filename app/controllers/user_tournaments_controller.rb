class UserTournamentsController < InheritedResources::Base

  private

    def user_tournament_params
      params.require(:user_tournament).permit(:gca_user_id, :golf_club_tournament_id, :authentication_token, :status, :created_by, :created_date, :updated_by, :updated_date)
    end
end

