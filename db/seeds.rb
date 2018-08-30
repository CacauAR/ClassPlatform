# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding Courses table...[START]"
10.times do |i|
  Course.create!( 
      code: rand(100..200),
      name: Faker::Book.title
    )
end
puts "Seeding Courses table...[OK]"

puts "Seeding Administrators table...[START]"
Random.rand(1..5).times do |i|
  Administrator.create!( 
      name: Faker::Name.name,
      sex: Faker::Gender.binary_type,
      email: Faker::Internet.email,
      password: Faker::Internet.password,
      image: Faker::Avatar.image
     )
end
puts "Seeding Administrators table...[OK]"

puts "Seeding Professors table...[START]"
Course.all.each do |_course|
  Random.rand(1..5).times do |i|
    Professor.create!( 
      registry: rand(70000..80000), 
      name: Faker::Name.name,
      sex: Faker::Gender.binary_type,
      email: Faker::Internet.email,
      password: Faker::Internet.password,
      image: Faker::Avatar.image,
      course: _course
    )
  end
end
puts "Seeding Professors table...[OK]"

puts "Seeding Students table...[START]"
Course.all.each do |_course|
  Random.rand(1..5).times do |i|
  Student.create!( 
      registry: rand(80000..90000), 
      name: Faker::Name.name,
      sex: Faker::Gender.binary_type,
      email: Faker::Internet.email,
      password: Faker::Internet.password,
      image: Faker::Avatar.image,
      course: _course
    )
  end
end
puts "Seeding Students table...[OK]"
  
puts "Seeding Classes table...[START]"
Course.all.each do |_course|
  Random.rand(1..3).times do |i|
  Classe.create!( 
      course: _course,
      professor: Professor.all.sample,
      code: Random.rand(1..4)
    )
  end
end
puts "Seeding Classes table...[OK]"

puts "Seeding Arquives table...[START]"
Course.all.each do |_course|
  Random.rand(1..3).times do |i|
  Arquive.create!( 
      path: Faker::File.file_name('path/to'), 
      classe: Classe.all.sample,
      course: _course,
      title: Faker::Book.title,
      comment: Faker::ChuckNorris.fact
    )
  end
end
puts "Seeding Arquives table...[OK]"  