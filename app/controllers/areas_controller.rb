class AreasController < InheritedResources::Base

  private

    def area_params
      params.require(:area).permit(:nombre, :tel)
    end
end

