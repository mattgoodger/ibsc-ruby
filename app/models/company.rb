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

class Company < ApplicationRecord
end
