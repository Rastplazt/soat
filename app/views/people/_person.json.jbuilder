json.extract! person, :id, :type_document, :document, :name, :last_name, :email, :phone, :user_id, :created_at, :updated_at
json.url person_url(person, format: :json)
