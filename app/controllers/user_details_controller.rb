class UserDetailsController < InheritedResources::Base

  private

    def user_detail_params
      params.require(:user_detail).permit(:user_id, :handicap, :precision, :handicap_status, :tee_id, :score, :putts, :fairway_hits, :created_by, :created_date, :updataed_by, :updated_date)
    end
end

