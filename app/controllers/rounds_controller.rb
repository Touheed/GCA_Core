class RoundsController < InheritedResources::Base

  private

    def round_params

      params.require(:round).permit(:score_card_type_id, :created_by, :created_date, :updataed_by, :updated_date, :course_hole_id, :score, :putts, :fairway_hits, :status)

    end
end

