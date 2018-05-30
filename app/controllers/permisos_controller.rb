class PermisosController < InheritedResources::Base

  private

    def permiso_params
      params.require(:permiso).permit(:tipopermiso, :descripcion)
    end
end

