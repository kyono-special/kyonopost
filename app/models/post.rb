# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  name       :string
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
    
    # Commentモデルを複数持てる様にする
    has_many :comments
    # presence -> 必須チェック
    # length -> 文字数の制限
    validates :name, presence: true, length: { maximum: 10 }
    validates :title, presence: true, length: { maximum: 30 }
    validates :content, presence: true, length: { maximum: 1000 }
end
