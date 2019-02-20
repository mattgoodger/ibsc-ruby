json.extract! job, :id, :title, :category, :job_type, :region, :apply_link, :description, :company_id, :highlight, :featured, :created_at, :updated_at
json.url job_url(job, format: :json)
