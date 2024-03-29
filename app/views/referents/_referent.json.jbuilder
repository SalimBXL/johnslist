json.extract! referent, :id, :name, :email, :created_at, :updated_at
json.url referent_url(referent, format: :json)
