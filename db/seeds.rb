# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Filters: circle, desandro, text,

# Task for backup
# rake db:seed:dump MODELS=Post APPEND=true

# Defaults
AdminUser.find_or_create_by(email: 'admin@mail.com') do |user|
  user.password = 'superuser'
  user.password_confirmation = 'superuser'
end

Post.find_or_create_by(name: "Михаил Барышников") do |post|
  post.position = "Артист балета"
  post.description = "<p>С возрастом меняется лишь наш взгляд на привычные вещи</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/БАЛЕТ/Барышников.jpeg")
  post.filter = "circle"
end

Post.find_or_create_by(name: "Рудольф Нуреевв") do |post|
  post.position = "Артист балета"
  post.description = "<p>Свободного человека отличает взгляд</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/БАЛЕТ/нуреев__.jpg")
  post.filter = "circle"
end

Post.find_or_create_by(name: "Марго Фонтейн") do |post|
  post.position = "Балерина"
  post.description = "<p>Иногда достаточно одного взгляда чтобы между людьми образовалась связь</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/БАЛЕТ/Margot-Fonteyn.jpg")
  post.filter = "circle"
end



# This is generated with seed_dump
# Post.create!([
#   {name: "Альберт Эйнштейн", description: "<p>Эйнштейн был одним из самых выдающихся представителей человечества. В 1951 году молодая женщина спросила у него в письме, в чем смысл жизни. Ответ был коротким: &laquo;Чтобы создавать удовлетворение для себя и для других&raquo;. В письме своему сыну Эдуарду Эйнштейн был более конкретен. Он написал ему, что верит в &laquo;высшую стадию сознания как высший идеал&raquo;, а человеческая способность создавать новые вещи из ничего &mdash; это больше, чем мы можем подумать. Именно акт творения позволяет нам испытывать счастье. Он также напоминал, что творить нужно не из желания запомниться, а из любви к вещи, которую создаешь.</p>\r\n\r\n<p><img alt=\"\" src=\"https://facesdev.s3-eu-central-1.amazonaws.com/uploads/ckeditor/pictures/1/content_einstein.jpg?X-Amz-Expires=600&amp;X-Amz-Date=20171015T212453Z&amp;X-Amz-Algorithm=AWS4-HMAC-SHA256&amp;X-Amz-Credential=AKIAIF46SYGZQ74JLTVQ/20171015/eu-central-1/s3/aws4_request&amp;X-Amz-SignedHeaders=host&amp;X-Amz-Signature=e4473e225be0e7adcf04f64da8b9316deb880ba1f09b2c67dd16a8434475248f\" style=\"width: 207px; height: 282px;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>А эту картинку мы только что загрузили с админки</p>\r\n", category: "hero", photo: "einstein.jpg", filter: "circle"}
# ])
