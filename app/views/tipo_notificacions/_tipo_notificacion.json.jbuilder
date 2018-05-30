json.extract! tipo_notificacion, :id, :nombre, :descripcion, :comentario, :notificacion_id, :created_at, :updated_at
json.url tipo_notificacion_url(tipo_notificacion, format: :json)
