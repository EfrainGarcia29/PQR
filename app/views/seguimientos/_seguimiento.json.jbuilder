json.extract! seguimiento, :id, :descripcion, :fecha, :hora, :created_at, :updated_at
json.url seguimiento_url(seguimiento, format: :json)
