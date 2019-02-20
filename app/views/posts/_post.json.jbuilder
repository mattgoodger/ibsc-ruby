json.extract! post, :id, :job_title, :job_category, :job_type, :company_head_quarters, :job_region, :job_apply_link, :job_description, :company_name, :company_statement, :company_url, :company_email, :company_description, :company_logo, :highlight_job, :feature_job, :created_at, :updated_at
json.url post_url(post, format: :json)
