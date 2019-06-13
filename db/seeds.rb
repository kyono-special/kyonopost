# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 100件の投稿データを作成
if Rails.env == 'development'
    (1..100).each do |i|
        Post.create(name: "ユーザ#{i}", title: "タイトル#{i}", content: "本文#{i}")
    end
    
    # 追加
    Tag.create([
        { name: 'Ruby' },
        { name: 'Ruby on Rails5' },
        { name: 'Python3' },
        { name: 'Django' },
        { name: 'TDD' }
    ])
end