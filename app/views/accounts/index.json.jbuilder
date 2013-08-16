json.array!(@users) do |user|
  json.extract! user, :email, :password, :admin
  json.url account_url(user, format: :json)
end
