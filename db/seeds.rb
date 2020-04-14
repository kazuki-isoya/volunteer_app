


User.create(
  name: "test",
  email: "test@email.com",
  icon:File.open("./public/images/default.png"),
  password: "password",
  admin: false
)

20.times do |n|
  email = Faker::Internet.email
  password = "password"
  User.create!(name: "seed_name",
               email: email,
               icon:File.open("./public/images/default.png"),
               password: password,
               admin: false
               )
end

FactoryBot.create(:volunteer)


Category.create(name: "誰でも歓迎", icon:File.open("./public/images/welcom.jpg"))
Category.create(name: "力仕事", icon:File.open("./public/images/power.png"))
Category.create(name: "老若男女問わず", icon:File.open("./public/images/peaple.png"))
