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

class Project < ActiveRecord::Base
  belongs_to :client
  has_many :jobs
  
  attr_accessible :goal_date, :name, :start_date, :description, :client_id
end
