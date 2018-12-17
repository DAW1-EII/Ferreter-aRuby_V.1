json.extract! currentuser, :id, :name, :email, :password, :dni, :telephone, :dir, :number, :cp, :created_at, :updated_at
json.url currentuser_url(currentuser, format: :json)
