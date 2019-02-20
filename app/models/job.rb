# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  apply_link  :string
#  category    :integer
#  description :text
#  featured    :boolean
#  highlight   :boolean
#  job_type    :integer
#  region      :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :integer
#
# Indexes
#
#  index_jobs_on_company_id  (company_id)
#

class Job < ApplicationRecord
  belongs_to :company
end
