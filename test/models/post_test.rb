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

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
