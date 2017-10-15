# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Filters: circle, desandro, text,

Post.create(
  name: "Альберт Эйнштейн",
  description: "Эйнштейн был одним из самых выдающихся представителей человечества. В 1951 году молодая женщина спросила у него в письме, в чем смысл жизни. Ответ был коротким: «Чтобы создавать удовлетворение для себя и для других». В письме своему сыну Эдуарду Эйнштейн был более конкретен. Он написал ему, что верит в «высшую стадию сознания как высший идеал», а человеческая способность создавать новые вещи из ничего — это больше, чем мы можем подумать. Именно акт творения позволяет нам испытывать счастье. Он также напоминал, что творить нужно не из желания запомниться, а из любви к вещи, которую создаешь.",
  category: "hero",
  photo: "",
  filter: "circle"
)

AdminUser.create!(email: 'admin@mail.com', password: 'superuser', password_confirmation: 'superuser') if Rails.env.development?
