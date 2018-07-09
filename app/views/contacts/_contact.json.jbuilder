json.extract! contact, :id, :Email, :Asunto, :Mensaje, :created_at, :updated_at
json.url contact_url(contact, format: :json)
