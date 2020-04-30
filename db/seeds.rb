@test = User.create(
  name: "test",
  email: "test@email.com",
  icon: open("./public/images/hito.jpg"),
  password: "password",
  admin: false,
  introduction: "テストユーザーはプロフィールを編集できません。"
)

@user = FactoryBot.create(:user)

@nobita = User.create(
  name: "のび太",
  email: "nobita@email.com",
  icon: open("./public/images/nobita.png"),
  password: "password",
  admin: false,
  introduction: "特技は昼寝、あやとり、射撃"
)

@cloud = User.create(
  name: "クラウド",
  email: "cloud@email.com",
  icon: open("./public/images/cloud.jpg"),
  password: "password",
  admin: false,
  introduction: "元ソルジャー1st。"
)

@miyano = User.create(
  name: "宮野志保",
  email: "miyano@email.com",
  icon: open("./public/images/miyano.jpg"),
  password: "password",
  admin: false,
  introduction: "本当は18歳よ"
)

@sato = User.create(
  name: "佐藤洋子",
  email: "sato@email.com",
  icon: open("./public/images/hito2.png"),
  password: "password",
  admin: false,
  introduction: "ハッピーうれぴーよろぴくねー"
)

@amuro = User.create(
  name: "安室透",
  email: "zero@email.com",
  icon: open("./public/images/amuro.jpg"),
  password: "password",
  admin: false,
  introduction: "黒の組織のスパイで公安の刑事でカフェの店員です"
)

@char = User.create(
  name: "シャア",
  email: "char@email.com",
  icon: open("./public/images/char.jpg"),
  password: "password",
  admin: false,
  introduction: "本当は総帥です。大佐は愛称です。"
)

@shin = User.create(
  name: "新庄狂死郎",
  email: "shin@email.com",
  password: "password",
  admin: false,
  introduction: "中2です。"
)

@eripiyo = User.create(
  name: "えりぴよ",
  email: "eripiyo@email.com",
  icon: open("./public/images/eripiyo.jpeg"),
  password: "password",
  admin: false,
  introduction: "岡山在住です。ChamJamのファンです。"
)

@ikirito = User.create(
  name: "イキリト",
  email: "ikirito@email.com",
  password: "password",
  admin: false,
  introduction: "言っとくがおれはソロだ"
)

@toho = User.create(
  name: "東方不敗",
  email: "toho@email.com",
  icon: open("./public/images/toho.jpg"),
  password: "password",
  admin: false,
  introduction: "東方不敗は王者の風"
)


FactoryBot.create(:volunteer, title: "アプリ作成に協力して", describe: "Railを使ったアプリで機能を追加してもらいたいです。", user: @user)
FactoryBot.create(:volunteer, title: "薬を届けて", describe: "コロナ対策で外に出ないので病院から薬を持ってきてほしいです。", capacity: 1, user: @test)
FactoryBot.create(:volunteer, title: "宿題を手伝って", describe: "算数の宿題がわからないので助けて", capacity: 1, user: @nobita)
FactoryBot.create(:volunteer, title: "なんでも屋の手伝い", describe: "一人では手が足りないから頼みたい。詳しくはコメントで。", capacity: 2, user: @cloud)
FactoryBot.create(:volunteer, title: "研究の手伝い", describe: "新しく作った薬の被検体になって欲しい", user: @miyano)
FactoryBot.create(:volunteer, title: "パンを買ってきて欲しい", describe: "年をとって車に乗れないので代わりにパンを買ってきて欲しい", user: @sato)
FactoryBot.create(:volunteer, title: "口裏を合わせて欲しい", describe: "詳しくは口頭で", capacity: 2, user: @amuro)
FactoryBot.create(:volunteer, title: "アクシズを落とす", describe: "アクシズを地球に落下させるため協力を求む。", capacity: 100, user: @char)
FactoryBot.create(:volunteer, title: "ライブに一緒に行って欲しい", describe: "ライブに行って一緒に舞菜を応援して欲しい。更にCDも買って欲しい。", user: @eripiyo)
FactoryBot.create(:volunteer, title: "地球保護", describe: "地球環境を守るためデビルガンダムを復活させたい", capacity: 3, user: @toho)

Category.create(name: "誰でも歓迎", icon:File.open("./public/images/welcom.jpg"))
Category.create(name: "力仕事", icon:File.open("./public/images/power.png"))
Category.create(name: "老若男女問わず", icon:File.open("./public/images/peaple.png"))
