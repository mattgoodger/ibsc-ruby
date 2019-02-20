# == Schema Information
#
# Table name: companies
#
#  id            :integer          not null, primary key
#  description   :text
#  email         :string
#  head_quarters :string
#  logo          :string
#  name          :string
#  statement     :text
#  url           :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
