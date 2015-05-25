class ScoreCardTypesController < InheritedResources::Base

  private

    def score_card_type_params
      params.require(:score_card_type).permit(:description, :created_by, :created_date, :updataed_by, :updated_date)
    end
end

