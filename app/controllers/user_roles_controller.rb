class UserRolesController < InheritedResources::Base

  private

    def user_role_params
      params.require(:user_role).permit(:gca_user_id, :gca_role_id, :created_by, :created_date, :updataed_by, :updated_date)
    end
end

