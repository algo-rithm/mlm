# == Schema Information
#
# Table name: jobs
#
#  id            :integer          not null, primary key
#  project_id    :integer
#  name          :string(255)
#  sku           :string(255)
#  fabric_id     :integer
#  prerequisites :boolean
#  died          :boolean
#  finished      :boolean
#  sewn          :boolean
#  packaged      :boolean
#  asking_price  :decimal(, )
#  sold_price    :decimal(, )
#  location      :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Job < ActiveRecord::Base
  belongs_to :project
  belongs_to :fabric
  
  attr_accessible :asking_price, :died, :fabric_id, :finished, :location, :name, :packaged, :prerequisites, :project_id, :sewn, :sku, :sold_price
end
