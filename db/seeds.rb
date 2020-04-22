@user = FactoryBot.create(:user)

@test = User.create(
  name: "test",
  email: "test@email.com",
  icon:File.open("./app/assets/images/default.png"),
  password: "password",
  admin: false,
  introduction: "テストユーザーはプロフィールを編集できません。"
)

@nobita = User.create(
  name: "のび太",
  email: "nobita@email.com",
  icon:File.open("./app/assets/images/default.png"),
  password: "password",
  admin: false,
  introduction: "特技は昼寝、あやとり、射撃"
)

@cloud = User.create(
  name: "クラウド",
  email: "cloud@email.com",
  icon:File.open("./app/assets/images/default.png"),
  password: "password",
  admin: false,
  introduction: "元ソルジャー1st。"
)

@shulk = User.create(
  name: "シュルク",
  email: "shulk@email.com",
  icon:File.open("./app/assets/images/default.png"),
  password: "password",
  admin: false,
  introduction: "モナドの研究をしています。"
)

@jojo = User.create(
  name: "ジョジョ",
  email: "jojo@email.com",
  icon:File.open("./app/assets/images/default.png"),
  password: "password",
  admin: false,
  introduction: "ハッピーうれぴーよろぴくねー"
)

@zero = User.create(
  name: "ゼロ",
  email: "zero@email.com",
  icon:File.open("./app/assets/images/default.png"),
  password: "password",
  admin: false,
  introduction: "黒の組織のスパイで公安の刑事でカフェの店員です"
)

@char = User.create(
  name: "シャア",
  email: "char@email.com",
  icon:File.open("./app/assets/images/default.png"),
  password: "password",
  admin: false,
  introduction: "本当は総帥です。大佐は愛称です。"
)

@shin = User.create(
  name: "シン",
  email: "shin@email.com",
  icon:File.open("./app/assets/images/default.png"),
  password: "password",
  admin: false,
  introduction: "モビルスーツの操縦には自身があります"
)

@eripiyo = User.create(
  name: "えりぴよ",
  email: "eripiyo@email.com",
  icon:File.open("./app/assets/images/default.png"),
  password: "password",
  admin: false,
  introduction: "岡山在住です。ChamJamのファンです。"
)

@ikirito = User.create(
  name: "イキリト",
  email: "ikirito@email.com",
  icon:File.open("./app/assets/images/default.png"),
  password: "password",
  admin: false,
  introduction: "おれはソロだ"
)

@van = User.create(
  name: "ヴァンガロール",
  email: "van@email.com",
  icon:File.open("./app/assets/images/default.png"),
  password: "password",
  admin: false,
  introduction: "私は大砲よ"
)


FactoryBot.create(:volunteer, title: "アプリ作成に協力して", describe: "Railを使ったアプリで機能を追加してもらいたいです。", user: @user)
FactoryBot.create(:volunteer, title: "薬を届けて", describe: "コロナ対策で外に出ないので病院から薬を持ってきてほしいです。", capacity: 1, user: @test)
FactoryBot.create(:volunteer, title: "宿題を手伝って", describe: "算数の宿題がわからないので助けて", capacity: 1, user: @nobita)
FactoryBot.create(:volunteer, title: "なんでも屋の手伝い", describe: "一人では手が足りないから頼みたい。詳しくはコメントで。", capacity: 2, user: @cloud)
FactoryBot.create(:volunteer, title: "研究の手伝い", describe: "研究材料が必要なので機神兵を10体倒してきて欲しい。", user: @shulk)
FactoryBot.create(:volunteer, title: "柱の男を倒したい", describe: "ワムウ、エシディシ、カーズを倒すため協力してくれ。", user: @jojo)
FactoryBot.create(:volunteer, title: "口裏を合わせて欲しい", describe: "アポロの梓さんへの言い訳をするための口裏を合わせて協力して欲しい。", capacity: 2, user: @zero)
FactoryBot.create(:volunteer, title: "アクシズを落とす", describe: "アクシズを地球に落下させるため協力を求む。", capacity: 100, user: @char)
FactoryBot.create(:volunteer, title: "ライブに一緒に行って欲しい", describe: "ライブに行って一緒に舞菜を応援して欲しい。更にCDも買って欲しい。", user: @eripiyo)
FactoryBot.create(:volunteer, title: "チャンピオンになるために", describe: "チャンピオンになるために腕に自身がある者を求む。", capacity: 2, user: @van)

Category.create(name: "誰でも歓迎", icon:File.open("./app/assets/images/welcom.jpg"))
Category.create(name: "力仕事", icon:File.open("./app/assets/images/power.png"))
Category.create(name: "老若男女問わず", icon:File.open("./app/assets/images/peaple.png"))
