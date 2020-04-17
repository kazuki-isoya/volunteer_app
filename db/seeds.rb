@user = FactoryBot.create(:user)

@test = User.create(
  name: "test",
  email: "test@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false,
  introduction: "テストユーザーはプロフィールを編集できません。"
)

@nobita = User.create(
  name: "nobita",
  email: "nobita@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false,
  introduction: "特技は昼寝、あやとり、射撃"
)

@cloud = User.create(
  name: "cloud",
  email: "cloud@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false,
  introduction: "興味ないね"
)

@shulk = User.create(
  name: "shulk",
  email: "shulk@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false,
  introduction: "穏やかじゃないですね"
)

@jojo = User.create(
  name: "jojo",
  email: "jojo@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false,
  introduction: "やれやれだぜ"
)

@zero = User.create(
  name: "zero",
  email: "zero@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false,
  introduction: "撃って良いのは撃たれる覚悟のあるやつだけだ"
)

@char = User.create(
  name: "char",
  email: "char@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false,
  introduction: "地球が保たん時が来ているのだ"
)

@shin = User.create(
  name: "shin",
  email: "shin@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false,
  introduction: "また戦争がしたいのか、あんたたちは"
)

@eripiyo = User.create(
  name: "eripiyo",
  email: "eripiyo@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false,
  introduction: "舞菜が武道館行ってくれたら死ぬ"
)

@ikirito = User.create(
  name: "ikirito",
  email: "ikirito@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false,
  introduction: "おれはソロだ"
)

@van = User.create(
  name: "van",
  email: "van@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false,
  introduction: "私は大砲よ"
)


FactoryBot.create(:volunteer, title: "アプリ作成に協力して", user: @user)
FactoryBot.create(:volunteer, title: "薬を届けて", capacity: 1, user: @test)
FactoryBot.create(:volunteer, title: "宿題を手伝って", capacity: 1, user: @nobita)
FactoryBot.create(:volunteer, title: "腕自慢求む", capacity: 2, user: @cloud)
FactoryBot.create(:volunteer, title: "研究の手伝い", user: @shulk)
FactoryBot.create(:volunteer, title: "エジプトへDIOを倒しに行く仲間募集", user: @jojo)
FactoryBot.create(:volunteer, title: "口裏を合わせて欲しい", capacity: 2, user: @zero)
FactoryBot.create(:volunteer, title: "アクシズを落とすのを手伝って", capacity: 100, user: @char)
FactoryBot.create(:volunteer, title: "フリーダムを倒したい", user: @shin)
FactoryBot.create(:volunteer, title: "スモークの材料が欲しい", user: @van)

Category.create(name: "誰でも歓迎", icon:File.open("./public/images/welcom.jpg"))
Category.create(name: "力仕事", icon:File.open("./public/images/power.png"))
Category.create(name: "老若男女問わず", icon:File.open("./public/images/peaple.png"))
