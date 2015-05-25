class StatesController < InheritedResources::Base

  private

    def state_params
      params.require(:state).permit(:state_name, :created_by, :created_date, :updated_by, :updated_date)
    end
end

