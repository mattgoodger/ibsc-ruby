json.extract! company, :id, :name, :head_quarters, :statement, :url, :email, :description, :logo, :created_at, :updated_at
json.url company_url(company, format: :json)
