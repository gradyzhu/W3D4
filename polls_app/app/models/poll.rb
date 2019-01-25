# == Schema Information
#
# Table name: polls
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Poll < ApplicationRecord
  belongs_to :author,
  class_name: :User,
  primary_key: :id,
  foreign_key: :author_id

  has_many :questions,
  class_name: :Question, 
  primary_key: :id,
  foreign_key: :question_id
end
