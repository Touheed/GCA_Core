class PlayersController < InheritedResources::Base

  private

    def player_params
      params.require(:player).permit(:gca_user_id, :handicap, :tee_id, :created_by, :created_date, :updated_by, :updated_date, :score, :putts, :fairway_hits, :handicap_status, :status, :nick_name)
    end
end

