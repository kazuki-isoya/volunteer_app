@user = User.create(
  name: "test",
  email: "test@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@user2 = User.create(
  name: "test2",
  email: "test2@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@user3 = User.create(
  name: "test3",
  email: "test3@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@user4 = User.create(
  name: "test4",
  email: "test4@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@user5 = User.create(
  name: "test5",
  email: "test5@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@user6 = User.create(
  name: "test6",
  email: "test6@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@user7 = User.create(
  name: "test7",
  email: "test7@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@user8 = User.create(
  name: "test8",
  email: "test8@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@user9 = User.create(
  name: "test9",
  email: "test9@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@user10 = User.create(
  name: "test10",
  email: "test10@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

@user11 = User.create(
  name: "test11",
  email: "test11@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)


FactoryBot.create(:volunteer)
FactoryBot.create(:volunteer, title: "test2", user: @user)
FactoryBot.create(:volunteer, title: "test3", user: @user2)
FactoryBot.create(:volunteer, title: "test4", user: @user3)
FactoryBot.create(:volunteer, title: "test5", user: @user4)
FactoryBot.create(:volunteer, title: "test6", user: @user5)
FactoryBot.create(:volunteer, title: "test7", user: @user6)
FactoryBot.create(:volunteer, title: "test8", user: @user7)
FactoryBot.create(:volunteer, title: "test9", user: @user8)
FactoryBot.create(:volunteer, title: "test10", user: @user9)






Category.create(name: "誰でも歓迎", icon:File.open("./public/images/welcom.jpg"))
Category.create(name: "力仕事", icon:File.open("./public/images/power.png"))
Category.create(name: "老若男女問わず", icon:File.open("./public/images/peaple.png"))
