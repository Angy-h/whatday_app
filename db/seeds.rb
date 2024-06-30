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
  main_keyword: '菖蒲華(6月30日)',
  quiz_question: '夏越の祓で、お祓いのために茅や藁を束ねて作った大きな輪を何というでしょうか？(6月30日)',
  quiz_answer: '茅の輪（ちのわ）(6月30日答え)',
  description: '菖蒲の花が咲き始める時候（6月30日説明）',
  sub_keyword: '鳥越神社の茅の輪くぐり　芭蕉布　紅蜀葵（6月30日）',
  activity: '今日は近くの神社で行われる茅の輪くぐりを体験してみるのはいかがでしょう？地元の神社で開催される祭りや行事に参加し、茅の輪をくぐって清められた気持ちで自分の新しい一歩を始めることができます。（6月30日）'
)
DaysInfo.create(
  date: '2024-07-01',
  main_keyword: '山開き・海開き(7月1日)',
  quiz_question: '鵜の習性を利用して鮎を獲る伝統的な漁法を何というでしょうか？(7月1日)',
  quiz_answer: '鵜飼（うかい）(7月1日答え)',
  description: '場所により異なるが、この日に山開き・海開きを行うところが多い（7月1日説明）',
  sub_keyword: '祇園祭　鮎膾　青芒（7月1日）',
  activity: '鵜飼の見学ツアーを計画しませんか。伝統的な魚を捕る漁法である鵜飼を見学しながら自然を満喫するのは、夏の一日を有意義に過ごすことができますね。（7月1日）'
)
DaysInfo.create(
  date: '2024-07-02',
  main_keyword: '半夏生(7月2日)',
  quiz_question: '稲の外注を追い払うための呪術的な行事を何というでしょうか？(7月2日)',
  quiz_answer: '虫送り（むしおくり）(7月2日答え)',
  description: '半夏というサトイモ科の草が生えはじめる時候（7月2日説明）',
  sub_keyword: '藍染まつり　虎が雨　末摘花（7月2日）',
  activity: '今年こそ浴衣を着て、近くの夏祭りに行ってみようよ。屋台で美味しい食べ物を食べたり、夜空に花火が上がるのを見たりするのが楽しみだね。（7月2日）'
)
DaysInfo.create(
  date: '2024-07-03',
  main_keyword: '雨の特異日(7月3日)',
  quiz_question: '紅花の花びらからは紅色の染料が採れるが、種からは何が採れるでしょうか？(7月3日)',
  quiz_answer: '紅花油(7月3日答え)',
  description: '高い確率で定まった気象現象が起こる日を特異日と言い、本日は雨の特異日（7月3日説明）',
  sub_keyword: 'あばれ祭　はたた神　茉莉花（7月3日）',
  activity: '今日は天気が急に雷雨になりそうだね。家でお気に入りの本を読みながら、雷の音を聞くのも一興だよ。お気に入りの飲み物を準備して、雨音と共にリラックスしよう。（7月3日）'
)
DaysInfo.create(
  date: '2024-07-04',
  main_keyword: '半夏生(7月4日)',
  quiz_question: '夏に最も多い積乱雲による放電現象を何というでしょうか？(7月4日)',
  quiz_answer: '雷（かみなり）(7月4日答え)',
  description: '半夏というサトイモ科の草が生えはじめる時候（7月4日説明）',
  sub_keyword: '美国神社例大祭　海境　夏蚕（7月4日）',
  activity: '今日は暑いから、ジャスミンティーはいかがでしょう？お庭やバルコニーで静かにジャスミンの香りを楽しみながら、本を読んだり音楽を聴いたりするのも良いですね。（7月4日）'
)
DaysInfo.create(
  date: '2024-07-05',
  main_keyword: '半夏生(7月5日)',
  quiz_question: '海岸などで見られるカモメ科の鳥で猫のようになくものを何というでしょうか？(7月5日)',
  quiz_answer: '海猫（うみねこ）(7月5日答え)',
  description: '半夏というサトイモ科の草が生えはじめる時候（7月5日説明）',
  sub_keyword: '旱　鯖火　花魁草（7月5日）',
  activity: '今日は、家で水羊羹を作ってみるのはいかが？小豆を煮て甘い水で溶いて、冷やして食べると、夏の暑さをひんやりと感じながら和菓子を楽しめますよ。（7月5日）'
)
DaysInfo.create(
  date: '2024-07-06',
  main_keyword: 'サラダ記念日(7月6日)',
  quiz_question: '褐色に透けた蝉の抜け殻を何というでしょうか？(7月6日)',
  quiz_answer: '空蝉（うつせみ）(7月6日答え)',
  description: '俵万智の歌集「サラダ記念日」の歌から命名（7月6日説明）',
  sub_keyword: '入谷朝顔市　籠枕　青葦（7月6日）',
  activity: '今日は良い天気だから、庭で藤椅子に座って読書はいかがでしょう？藤の香りが漂いながら、静かに自然の中でリラックスする時間を過ごすのも素敵。（7月6日）'
)
DaysInfo.create(
  date: '2024-07-07',
  main_keyword: '七夕(7月7日)',
  quiz_question: '暑中見舞いを出す時期は、この以降いつ頃までとされるでしょうか？(7月7日)',
  quiz_answer: '立秋までの間(7月7日答え)',
  description: '中国の牽牛・織女星の伝説と日本の棚機女の信仰とが融合したもの。（7月7日説明）',
  sub_keyword: '蛙飛行事　羅（うすもの）　百合（7月7日）',
  activity: '日は七夕だから、家族や友人と一緒に七夕飾りを作ってみては？色とりどりの折り紙で笹に短冊や星形の飾りを付けて、願い事を書いたりするのも楽しい。（7月7日）'
)
DaysInfo.create(
  date: '2024-07-08',
  main_keyword: '温風至(7月8日)',
  quiz_question: '江戸時代に夏バテ防止に売られていた粥に麹を混ぜて発行させて作る飲み物を何というでしょうか？(7月8日)',
  quiz_answer: '甘酒（あまざけ）(7月8日答え)',
  description: '盛夏となって暑い風が吹く時候（7月8日説明）',
  sub_keyword: '成田祇園祭　蛇の衣　上布（7月8日）',
  activity: '今日は暑いから、家で自家製の夏の甘酒はいかがでしょう？米麹と砂糖を使って甘酒を作り、冷蔵庫で冷やしてから飲むと、夏の疲れも癒される。（7月8日）'
)
DaysInfo.create(
  date: '2024-07-09',
  main_keyword: '温風至(7月9日)',
  quiz_question: '親潮上空に南からの湿った暖かい風が吹き込んで起きる霧を夏霧というが、特に北海道のオホーツク海がわで発生する濃霧を何というでしょうか？(7月9日)',
  quiz_answer: '海霧（じり）(7月9日答え)',
  description: '盛夏となって暑い風が吹く時候（7月9日説明）',
  sub_keyword: 'ほおずき市　釣忍　睡蓮（7月9日）',
  activity: '今日は近くの水族館で熱帯魚を観察してみるのはいかがでしょう？色とりどりの魚たちが泳ぐ姿を見ながら、熱帯地域の海の生態系を学ぶことができます。（7月9日）'
)
DaysInfo.create(
  date: '2024-07-010',
  main_keyword: '温風至(7月10日)',
  quiz_question: '梅雨が終わりに近くなると激しい雷雨となることがあるが、これを何というでしょうか？(7月10日)',
  quiz_answer: '送り梅雨（おくりづゆ）(7月10日答え)',
  description: '盛夏となって暑い風が吹く時候（7月10日説明）',
  sub_keyword: '四万六千日　睡蓮　紙魚（7月10日）',
  activity: '近くの山岳リゾートで過ごすことを計画してはいかがでしょう？涼しい山の中で自然の中を散策したり、清涼な空気を楽しんだりするのが良いですね。（7月10日）'
)
DaysInfo.create(
  date: '2024-07-011',
  main_keyword: '世界人口デー(7月11日)',
  quiz_question: '暑さや強い日差しに負けることなく繁茂する夏の草を何というでしょうか？(7月11日)',
  quiz_answer: '夏草（なつくさ）(7月11日答え)',
  description: '平成元年に制定された国際デーの一つで、人口問題への関心を高める目的で制定された。（7月11日説明）',
  sub_keyword: 'いくたま夏祭　夜釣　梧桐（7月11日）',
  activity: '今日は近くのプールや川での水遊びはいかがでしょう？クールダウンしながら、友達や家族と一緒に水中で遊んだり、日光浴を楽しんだりするのが良いですね。（7月11日）'
)
DaysInfo.create(
  date: '2024-07-012',
  main_keyword: '蓮始開(7月12日)',
  quiz_question: 'お盆用の品々を売る位置のことを何というでしょうか？(7月12日)',
  quiz_answer: '草の市（くさのいち）(7月12日答え)',
  description: '蓮の花が咲きはじめる時候（7月12日説明）',
  sub_keyword: 'いくたま夏祭　古代蓮　鱚（7月12日）',
  activity: '今日は満月の夜、友達と一緒に近くの川や湖で夜釣りを楽しむのはいかがでしょう？静かな夜の中で魚を狙うのも楽しいですよ。（7月12日）'
)
DaysInfo.create(
  date: '2024-07-013',
  main_keyword: 'お盆の初日(7月13日)',
  quiz_question: '鰻に似た白身の魚で、今日料理に欠かせないハモ科の高級魚を何というでしょうか？(7月13日)',
  quiz_answer: '鱧（はも）(7月13日答え)',
  description: '迎え火を焚いて祖先の霊を迎える。7月13日説明）',
  sub_keyword: '靖國神社みたままつり　盂蘭盆会　月見草（7月13日）',
  activity: '今日は家で梅酒を作ってみるのはいかがでしょう？新鮮な梅を使って、砂糖と焼酎で漬け込みます。少し待てば、秋には美味しい梅酒が完成しますよ。（7月13日）'
)
DaysInfo.create(
  date: '2024-07-014',
  main_keyword: '蓮始開(7月14日)',
  quiz_question: 'お盆は先祖を祀るだけでなく生きている年長者に贈り物などして祝うがこの行事を何というでしょうか？(7月14日)',
  quiz_answer: '生見魂（いきみたま）(7月14日答え)',
  description: '蓮の花が咲きはじめる時候（7月14日説明）',
  sub_keyword: '佃島の盆踊り　祇園祭（宵々々山）　仏桑花（7月14日）',
  activity: '今日は季節の鱧を使った料理を楽しんでみませんか？地元の市場で新鮮な鱧を手に入れて、天ぷらや鱧ちりなど、夏の味覚を存分に楽しむことができますよ。（7月14日）'
)
DaysInfo.create(
  date: '2024-07-015',
  main_keyword: '盆(7月15日)',
  quiz_question: '元々は仏に捧げ物をする行事だったが、お世話になった人にも送るようになった習慣を何というでしょうか？(7月15日)',
  quiz_answer: 'お中元(7月15日答え)',
  description: '13〜16日の先祖の霊を供養する行事（7月15日説明）',
  sub_keyword: '本宿祇園祭　火取虫　茗荷の子（7月15日）',
  activity: '今日は地元の盆踊り大会に参加して、日本の伝統文化を体験してみませんか？浴衣を着て夜の涼しい風に当たりながら、踊りや屋台の食べ歩きは楽しいね。（7月15日）'
)
DaysInfo.create(
  date: '2024-07-016',
  main_keyword: '送り盆(7月16日)',
  quiz_question: '盆と正月にあったが奉公人が親元に帰る日を何と言ったでしょうか？(7月16日)',
  quiz_answer: '薮入(7月16日答え)',
  description: '送り火を焚いて祖先の霊を送り出すお盆の最終日。（7月16日説明）',
  sub_keyword: '祇園祭（宵山）　虫干　夾竹桃（7月16日）',
  activity: '今日は晴れた日に布団や衣類を虫干ししましょう？夏の日差しの下で、布団を干すのは気持ちがいい。虫干しをしながら、日光浴も兼ねてリフレッシュ。（7月16日）'
)
DaysInfo.create(
  date: '2024-07-017',
  main_keyword: '雨の特異日(7月17日)',
  quiz_question: '梅雨が明けた頃に吹く穏やかな南風を何というでしょうか？(7月17日)',
  quiz_answer: '白南風(7月17日答え)',
  description: '高い確率で定まった気象現象が起こる日を特異日と言い、本日は雨の特異日（7月17日説明）',
  sub_keyword: '祇園祭山鉾巡行（前祭）　葎　土用波（7月17日）',
  activity: '今日は地元の市場で新鮮な茗荷を手に入れて、茗荷の天ぷらを作ってみませんか？サクサクの衣と、茗荷の爽やかな風味が夏にぴったりです。（7月17日）'
)
DaysInfo.create(
  date: '2024-07-018',
  main_keyword: '海の日(7月18日)',
  quiz_question: '夏の暑いに、室内の暑さを避けて、外に出て涼を求めることを何というでしょうか？(7月18日)',
  quiz_answer: '端居（はしい）(7月18日答え)',
  description: '海の恩恵に感謝すると共に海洋国日本の繁栄を願う国民の休日。（7月18日説明）',
  sub_keyword: '浜降祭　洗膾（あらい）　糸瓜の花（7月18日）',
  activity: '酷暑の日は体調管理も大事です。家でのんびり過ごすのもいいかもしれません。外出する際は日傘や帽子、UVカットの服装で紫外線対策も忘れずに。（7月18日）'
)