class NotificacionsController < InheritedResources::Base

  private

    def notificacion_params
      params.require(:notificacion).permit(:mensaje, :fecha)
    end
end

