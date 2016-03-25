# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  phone      :string(255)
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contact < ActiveRecord::Base
  attr_accessible :comment, :email, :name, :phone
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
end
