json.array!(@clients) do |client|
  json.extract! client, :identifier, :name, :contact, :address, :phone, :fax
  json.url client_url(client, format: :json)
end
