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

if Rails.env == 'production'
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

# データベース上にサンプルユーザーを生成するRailsタスク
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end