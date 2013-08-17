json.array!(@invoices) do |invoice|
  json.extract! invoice, :recipient_id, :identifier, :amount
  json.url invoice_url(invoice, format: :json)
end
