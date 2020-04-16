@user = FactoryBot.create(:user)

@test = User.create(
  name: "test",
  email: "test@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false,
  introduction: "テストユーザーはプロフィールを編集できません。"
)

@hoge = User.create(
  name: "hoge",
  email: "hoge@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@mogu = User.create(
  name: "mogu",
  email: "mogu@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@leef = User.create(
  name: "leef",
  email: "leef@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@jojo = User.create(
  name: "jojo",
  email: "jojo@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@zero = User.create(
  name: "zero",
  email: "zero@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@syaa = User.create(
  name: "syas",
  email: "syaa@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@shin = User.create(
  name: "shin",
  email: "shin@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@ben = User.create(
  name: "ben",
  email: "ben@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@jibu = User.create(
  name: "jibu",
  email: "jibu@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@van = User.create(
  name: "van",
  email: "van@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)


FactoryBot.create(:volunteer, user: @user)
FactoryBot.create(:volunteer, title: "test_volunteer", user: @test)
FactoryBot.create(:volunteer, title: "hoge", user: @hoge)
FactoryBot.create(:volunteer, title: "mogu", user: @mogu)
FactoryBot.create(:volunteer, title: "leef", user: @leef)
FactoryBot.create(:volunteer, title: "jojo", user: @jojo)
FactoryBot.create(:volunteer, title: "zero", user: @zero)
FactoryBot.create(:volunteer, title: "syaa", user: @syaa)
FactoryBot.create(:volunteer, title: "shin", user: @shin)
FactoryBot.create(:volunteer, title: "ben", user: @ben)

Category.create(name: "誰でも歓迎", icon:File.open("./public/images/welcom.jpg"))
Category.create(name: "力仕事", icon:File.open("./public/images/power.png"))
Category.create(name: "老若男女問わず", icon:File.open("./public/images/peaple.png"))
