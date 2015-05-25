class GroupsController < InheritedResources::Base

  private

    def group_params
      params.require(:group).permit(:group_name, :group_type, :group_owner, :created_by,:created_date, :updataed_by, :updated_date)
    end
end

