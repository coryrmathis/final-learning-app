User.delete_all
Skill.delete_all


tae = User.create(dob: "02/02/02",first_name: "Tae", last_name: "Yun", email: "tae@gmail.com", password: "password", password_confirmation: "password", location: Faker::Address.zip)
skills = ["boxing","mandarin", "singing", "philosophy"]
skills.each do |skill|
  Skill.create!(name: skill)
end

User.create!(dob: "02/02/02", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: Faker::Address.zip)
User.create!(dob: "02/02/02", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: Faker::Address.zip)
User.create!(dob: "02/02/02", first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password", location: Faker::Address.zip)


