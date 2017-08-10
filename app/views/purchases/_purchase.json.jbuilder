json.extract! purchase, :id, :total_amount, :valid_since, :valid_until, :vehicle_id, :payment_id, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
