class GroupMembersController < InheritedResources::Base

  private

    def group_member_params

      params.require(:group_member).permit(:player_id, :group_id, :created_by, :created_date, :updataed_by, :updated_date)

    end
end

