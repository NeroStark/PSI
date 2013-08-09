json.array!(@banks) do |bank|
  json.extract! bank, :identifier, :name, :address
  json.url bank_url(bank, format: :json)
end
