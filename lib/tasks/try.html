namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_admins
    make_users
    make_unis
    make_semester
    make_vorlesung
    make_microposts
    make_relationships
  end
end

def make_admins
  admin = User.create!(name:     "Admin1",
                       email:    "admin1@uniphobia.com",
                       customer: false,
                       password: "passwort",
                       password_confirmation: "passwort")
  admin.toggle!(:admin)

  admin = User.create!(name:     "Admin2",
                       email:    "admin2@uniphobia.com",
                       customer: false,
                       password: "passwort",
                       password_confirmation: "passwort")
  admin.toggle!(:admin)
end

def make_users
  100.times do |n|
    name  = Faker::Name.name
    email = "user-#{n+1}@uniphobia.com"
    password  = "passwort"
    User.create!(name:     name,
                 email:    email,
                 password: password,
                 password_confirmation: password)
  end
end

def make_unis
  100.times do |n|
    name  = Faker::Name.name
    email = "uni-#{n+1}@uniphobia.com"
    password  = "password"
    User.create!(name:          name,
                 email:         email,
                 uni:           true,
                 customer:      false,
                 password:      password,
                 password_confirmation: password)
  end
end

def make_semester
  100.times do |n|
    name  = Faker::Name.name
    email = "semester-#{n+1}@uniphobia.com"
    password  = "passwort"
    User.create!(name:          name,
                 email:         email,
                 semester:      true,
                 customer:      false,
                 password:      password,
                 password_confirmation: password)
  end
end

def make_vorlesung
  100.times do |n|
    name  = Faker::Name.name
    email = "vorlesung-#{n+1}@uniphobia.com"
    password  = "passwort"
    User.create!(name:          name,
                 email:         email,
                 vorlesung:     true,
                 customer:      false,
                 password:      password,
                 password_confirmation: password)
  end
end

def make_microposts
  users = User.all(limit: 6)
  50.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end
end

def make_relationships
  users = User.all
  user  = users.first
  followed_users = users[2..50]
  followers      = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each      { |follower| follower.follow!(user) }
end