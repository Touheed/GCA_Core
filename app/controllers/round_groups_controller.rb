class RoundGroupsController < InheritedResources::Base

  private

    def round_group_params
      params.require(:round_group).permit(:round_id, :group_name, :group_type, :group_owner, :created_by, :created_date, :updataed_by, :updated_date)
    end
end

