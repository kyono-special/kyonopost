# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  name       :string           not null
#  comment    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :post
  
  validates :name, presence: true, length: { maximum: 20 }
  validates :comment, presence: true, length: { maximum: 1000 }
end
