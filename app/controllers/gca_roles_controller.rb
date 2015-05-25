class GcaRolesController < InheritedResources::Base

  private

    def gca_role_params
      params.require(:gca_role).permit(:role_name, :created_by, :created_date, :updataed_by, :updated_date)
    end
end

