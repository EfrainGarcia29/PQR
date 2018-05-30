class RolsController < InheritedResources::Base

  private

    def rol_params
      params.require(:rol).permit(:nombre, :user_id)
    end
end

