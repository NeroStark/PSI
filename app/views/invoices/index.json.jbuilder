json.array!(@invoices) do |invoice|
  json.extract! invoice, :recipient_id, :identifier, :amount, :ordered_at, :shipped_at, :invoiced_at, :delivered_at
  json.url invoice_url(invoice, format: :json)
end
