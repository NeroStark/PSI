json.array!(@suppliers) do |supplier|
  json.extract! supplier, :identifier, :name, :address, :shipping, :contactname, :contactmail, :phone, :fax
  json.url supplier_url(supplier, format: :json)
end
