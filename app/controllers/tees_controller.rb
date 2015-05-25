class TeesController < InheritedResources::Base

  private

    def tee_params
      params.require(:tee).permit(:description, :color_code, :created_by, :created_date, :updataed_by, :updated_date)
    end
end

