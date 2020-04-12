User.create(name: "admin", email: "admin@email.com", icon:File.open("./public/images/default.png"),
  password: "password", admin: true)

Category.create(name: "誰でも歓迎", icon:File.open("./public/images/welcom.jpg"))
Category.create(name: "力仕事", icon:File.open("./public/images/power.png"))
Category.create(name: "老若男女問わず", icon:File.open("./public/images/peaple.png"))
