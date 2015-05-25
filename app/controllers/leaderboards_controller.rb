class LeaderboardsController < InheritedResources::Base

  private

    def leaderboard_params
      params.require(:leaderboard).permit(:user_tournament_id, :course_hole_id, :score, :putts, :fairway_hits, :handicap_index, :created_by, :created_date, :updated_by, :updated_date)
    end
end

