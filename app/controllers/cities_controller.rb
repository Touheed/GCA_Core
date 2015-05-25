class CitiesController < InheritedResources::Base

  private

    def city_params
      params.require(:city).permit(:city_name, :created_by, :created_date, :updated_by, :updated_date)
    end
end

