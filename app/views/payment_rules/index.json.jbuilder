json.array!(@payment_rules) do |payment_rule|
  json.extract! payment_rule, :name, :percent, :period, :since
  json.url payment_rule_url(payment_rule, format: :json)
end
