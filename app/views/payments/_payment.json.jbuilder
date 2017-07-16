json.extract! payment, :id, :numcard, :name_owner, :expiry_date, :code, :dues_number, :created_at, :updated_at
json.url payment_url(payment, format: :json)
