json.extract! request, :id, :descripcion, :fecha, :hora, :reasignado, :created_at, :updated_at
json.url request_url(request, format: :json)
