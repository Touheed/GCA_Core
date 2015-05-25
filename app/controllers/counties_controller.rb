class CountiesController < InheritedResources::Base

  private

    def county_params
      params.require(:county).permit(:county_name, :created_by, :created_date, :updated_by, :updated_date)
    end
end

