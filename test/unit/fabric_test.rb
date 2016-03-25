# == Schema Information
#
# Table name: fabrics
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  notes          :text
#  length         :decimal(, )
#  silktype       :string(255)
#  purchase_date  :date
#  purchase_price :decimal(, )
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class FabricTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
