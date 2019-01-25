# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :authored_polls,
  class_name: :Poll,
  primary_key: :id,
  foreign_key: :poll_id

  has_many :responses,
  class_name: :Response, 
  primary_key: :id,
  foreign_key: :response_id
end
