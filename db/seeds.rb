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

# ИСКУССТВО
Post.find_or_create_by(name: "Энди Уорхол") do |post|
  post.position = "Художник, фотограф"
  post.description = "<p>Когда я смотрюсь в зеркало, я знаю точно, что вижу себя не так, как меня видят другие … потому что я смотрю на себя так, как мне хочется видеть. </p><p>Великие — это те, за кем можно наблюдать бесконечно, даже если это всего лишь движение их зрачков.</p><p>Красота сильно зависит от того, как она подана. Когда созерцаешь «красоту», все имеет значение. </p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/ИСКУССТВО/Andy Warhol.jpg")
  post.filter = "circle"
end

# Кионшка
Post.find_or_create_by(name: "Бустер Китон") do |post|
  post.position = "Актер"
  post.description = "<p>Взгляд — это искра</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/КИНО/Buster Keaton.jpg")
  post.filter = "circle"
end

Post.find_or_create_by(name: "Шарлотта Рэмплинг") do |post|
  post.position = "Актриса"
  post.description = "<p>Глаза обладают удивительной способностью начинать разговор перед тем как губы зашевелятся, и могут продолжать говорить, когда губы уже давно сомкнуты</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/КИНО/шарлотта рэмплинг.jpg")
  post.filter = "circle"
end

Post.find_or_create_by(name: "Хэлен Миррен") do |post|
  post.position = "Актриса"
  post.description = "<p>Взгляд невозможно передать словами, но его можно почувствовать</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/КИНО/Helen Mirren.jpg")
  post.filter = "circle"
end

Post.find_or_create_by(name: "Джефф Голдблум") do |post|
  post.position = "Актер"
  post.description = "<p>На пленке вся твоя энергия заключается во взгляде</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/КИНО/Jeff Goldblum.jpg")
  post.filter = "circle"
end

Post.find_or_create_by(name: "Робин Уильямс") do |post|
  post.position = "Актер"
  post.description = "<p>Наш взгляд говорит о том, сколько человеческого помещается в нас.</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/КИНО/Robin Williams_.jpg")
  post.filter = "circle"
end

# МОДЕЛИ
Post.find_or_create_by(name: "Твигги") do |post|
  post.position = "Модель"
  post.description = "<p>Перед миллионом камер отлично себя чувствую, а если на меня смотрят 100 человек – паника.</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/МОДЕЛИ/twiggy_.jpg")
  post.filter = "circle"
end

# МОДЕЛЬЕРЫ
Post.find_or_create_by(name: "Николя Гескьер") do |post|
  post.position = "Модельер"
  post.description = "<p>Ни одно слово не выразит то, что можно сказать взглядом</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/МОДЕЛЬЕРЫ/Nicolas Ghesquière.jpg")
  post.filter = "circle"
end

# МУЗЫКА
Post.find_or_create_by(name: "Бьорк") do |post|
  post.position = "Певица"
  post.description = "<p>Лучше останусь такой, какой меня видят люди, чем буду придерживаться правил, которых все равно не знаю и не понимаю</p></p>Люди больше привыкли воспринимать все глазами, а не ушами.</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/МУЗЫКА/Bjork.jpg")
  post.filter = "circle"
end

Post.find_or_create_by(name: "Дин Мартин") do |post|
  post.position = "Певец"
  post.description = "<p>И тут я все понял по одному ее взгляду.</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/МУЗЫКА/Dean Martin.jpg")
  post.filter = "circle"
end


# ПИСАТЕЛИ
Post.find_or_create_by(name: "Карсон Маккалерс") do |post|
  post.position = "Писатель"
  post.description = "<p>Порой одним взглядом можно сказать больше, чем тысячей слов</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/ПИСАТЕЛИ/Carson McCullers.jpg")
  post.filter = "circle"
end

Post.find_or_create_by(name: "Ромен Гари") do |post|
  post.position = "Писатель"
  post.description = "<p>Взгляд – это приглашение к диалогу</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/ПИСАТЕЛИ/Romain Gary.jpg")
  post.filter = "circle"
end

Post.find_or_create_by(name: "Олег Рой") do |post|
  post.position = "Писатель"
  post.description = "<p>Взгляд женщины — это её красота, её ум, её душа. Когда взгляд тебя покорил, остальное уже вторично.</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/ПИСАТЕЛИ/Oleg-Roy.jpg")
  post.filter = "circle"
end

Post.find_or_create_by(name: "Пауло Коэльо") do |post|
  post.position = "Писатель"
  post.description = "<p>Взгляд показывает силу души.</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/ПИСАТЕЛИ/paulo-kojelo.jpg")
  post.filter = "circle"
end

#СЦЕНАРИСТЫ
Post.find_or_create_by(name: "Труман Капоте") do |post|
  post.position = "Режиссер"
  post.description = "<p>«Лучше глядеть в небо, чем жить там» - Завтрак у Тиффани</p><p>«... мы стали понимать друг друга так глубоко, что могли обходиться почти без слов; объясняясь только взглядом…» - Завтрак у Тиффани</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/СЦЕНАРИСТЫ/Truman Capote.jpg")
  post.filter = "circle"
end

#ФОТОГРАФЫ
Post.find_or_create_by(name: "Хельмут Ньютон") do |post|
  post.position = "Фотограф"
  post.description = "<p>В фотокамере есть что-то магическое; она может служить барьером между моим взглядом и реальностью. </p><p>В фотокамере есть что-то магическое; она отображает мой взгляд на реальность</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/ФОТОГРАФЫ/helmut newton.jpg")
  post.filter = "circle"
end

Post.find_or_create_by(name: "Ирвинг Пенн") do |post|
  post.position = "Фотограф"
  post.description = "<p>Если я смотрю на какой-либо предмет в течение некоторого времени, то зрелище зачаровывает меня. Это и есть проклятье фотографа.</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/ФОТОГРАФЫ/irving penn.jpg")
  post.filter = "circle"
end

Post.find_or_create_by(name: "Андре Кертеш") do |post|
  post.position = "Фотограф"
  post.description = "<p>Хороший снимок останавливает ускользающий взгляд</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/ФОТОГРАФЫ/Andre Kertesz.jpg")
  post.filter = "circle"
end

# ХУДОЖНИКИ
Post.find_or_create_by(name: "Джаспер Джонс") do |post|
  post.position = "Художник"
  post.description = "<p>Все самое искреннее и настоящее незаметно на первый взгляд….</p>"
  post.category = "hero"
  post.photo = File.open(Rails.root + "app/assets/images/ХУДОЖНИКИ/Jasper Jones.jpg")
  post.filter = "circle"
end
