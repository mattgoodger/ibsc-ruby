# == Schema Information
#
# Table name: posts
#
#  id                    :integer          not null, primary key
#  company_description   :text
#  company_email         :string
#  company_head_quarters :string
#  company_logo          :string
#  company_name          :string
#  company_statement     :string
#  company_url           :string
#  feature_job           :boolean
#  highlight_job         :boolean
#  job_apply_link        :string
#  job_category          :integer
#  job_description       :text
#  job_region            :string
#  job_title             :string
#  job_type              :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Post < ApplicationRecord
	after_create_commit :link_job_to_company

	private
	def link_job_to_company

		company = Company.new
		company.name = company_name
		company.description = company_description
		company.statement = company_statement
		company.email = company_email
		company.logo = company_logo
		company.url = company_url
		company.head_quarters = company_head_quarters
		company.save

		Job.create title: job_title,
			job_type: job_type,
			description: job_description,
			category: job_category,
			region: job_region,
		  apply_link: job_apply_link,
		  company: company,
			highlight: highlight_job,
			featured: feature_job





	end
end
