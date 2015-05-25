class ScoreCardsController < InheritedResources::Base

  private

    def score_card_params
      params.require(:score_card).permit(:round_id, :course_hole_id, :round_group_member_id, :handicap_index, :score, :putts, :fairway_hits, :created_by, :created_date, :updataed_by, :updated_date)
    end
end

