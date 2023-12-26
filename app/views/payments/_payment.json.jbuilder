json.extract! payment, :id, :amount, :currency, :timestamp, :created_at, :updated_at
json.url payment_url(payment, format: :json)
