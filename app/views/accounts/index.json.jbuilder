json.array!(@accounts) do |account|
  json.extract! account, :email, :password, :admin
  json.url account_url(account, format: :json)
end
