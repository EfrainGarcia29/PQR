class TiposSeguimientosController < InheritedResources::Base

  private

    def tipos_seguimiento_params
      params.require(:tipos_seguimiento).permit(:nombre, :comentario)
    end
end

