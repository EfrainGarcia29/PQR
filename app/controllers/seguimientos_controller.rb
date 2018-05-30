class SeguimientosController < InheritedResources::Base

  private

    def seguimiento_params
      params.require(:seguimiento).permit(:descripcion, :fecha, :hora)
    end
end

