# メインのサンプルユーザーを1人作成する
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

# 追加のユーザーをまとめて生成する
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

# ユーザーの一部を対象にマイクロポストを生成する
users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(word_count: 5)
  users.each { |user| user.microposts.create!(content: content) }
end

# 日付に関するインフォメーションを生成する
DaysInfo.create(
  date: '2024-06-30',
  main_keyword: '6月30日キーワード',
  quiz_question: '6月30日のクイズ',
  quiz_answer: '6月30日のクイズの答え',
  description: 'その日のキーワードの解説（6月30日）',
  sub_keyword: '検索用キーワード（6月30日）',
  activity: 'アクティビティの提案をします（6月30日）'
)