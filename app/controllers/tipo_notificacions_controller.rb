class TipoNotificacionsController < InheritedResources::Base

  private

    def tipo_notificacion_params
      params.require(:tipo_notificacion).permit(:nombre, :descripcion, :comentario, :notificacion_id)
    end
end

