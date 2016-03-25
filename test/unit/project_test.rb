# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  client_id   :integer
#  start_date  :date
#  goal_date   :date
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
