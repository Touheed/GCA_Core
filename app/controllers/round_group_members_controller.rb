class RoundGroupMembersController < InheritedResources::Base

  private

    def round_group_member_params

      params.require(:round_group_member).permit(:player_id, :round_group_id, :created_by, :created_date, :updataed_by, :updated_date)
    end
end

