json.extract! notificacion, :id, :mensaje, :fecha, :created_at, :updated_at
json.url notificacion_url(notificacion, format: :json)
