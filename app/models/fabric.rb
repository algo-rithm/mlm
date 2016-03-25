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

class Fabric < ActiveRecord::Base
  attr_accessible :length, :name, :notes, :purchase_date, :purchase_price, :silktype
  
  has_many :jobs
end
