User.delete_all
Skill.delete_all

User.create(dob: "12/01/1900",first_name: "test", last_name: "test", email: "test@test.com", password: "testing", password_confirmation: "testing", location: "92122")
tae = User.create(dob: "12/01/1900",first_name: "Tae", last_name: "Yun", email: "tae@gmail.com", password: "password", password_confirmation: "password", location: Faker::Address.zip)

@skills = ["Sports", "Language", "Music", "Philosophy", "Technology", "Math", "Science", "The Arts"]
@skills.each do |skill|
  Skill.create!(name: skill)
end

User.create!(dob: "12/01/1900", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: "63088")
User.create!(dob: "12/01/1900", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: "63088")


12.times do
  User.create!(dob: "02/02/02", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: "92103")
end

10.times do
  User.create!(dob: "02/02/02", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: "92101")
end

14.times do
  User.create!(dob: "02/02/02", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: "92110")
end

3.times do
  User.create!(dob: "02/02/02", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: "92104")
end

1.times do
  User.create!(dob: "02/02/02", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: "92102")
end

9.times do
  User.create!(dob: "02/02/02", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: "06107")
end

5.times do
  User.create!(dob: "02/02/02", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: "06110")
end

2.times do
  User.create!(dob: "02/02/02", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: "06119")
end

8.times do
  User.create!(dob: "02/02/02", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: "63088")
end

7.times do
  User.create!(dob: "02/02/02", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: "63021")
end

6.times do
  User.create!(dob: "02/02/02", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: "63122")
end

User.all.each do |user|
    user.skills << Skill.all.sample
end
