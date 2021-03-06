require 'faker'

# create 20 topics
topics = []
12.times do
  topics << Topic.create(
    name: Faker::Lorem.words(rand(1..10)).join(" "), 
    description: Faker::Lorem.paragraph(rand(1..4))
  )
end

# create users, posts & comments
rand(5..10).times do
  password = Faker::Lorem.characters(10)
  u = User.new(
    name: Faker::Name.name, 
    email: Faker::Internet.email, 
    password: password, 
    password_confirmation: password)
  u.skip_confirmation!
  u.save

  # now have this user make some posts & comments on random topics
  rand(5..10).times do
    topic = topics.first
    rand(5..10).times do
      p = u.posts.create(
        topic: topic,
        title: Faker::Lorem.words(rand(1..10)).join(" "), 
        body: Faker::Lorem.paragraphs(rand(1..4)).join("\n"))

      # set the created_at to a time within the past year
      p.update_attribute(:created_at, Time.now - rand(600..31536000))
      p.update_rank
      p.save

      # now create some comments
      rand(5..10).times do
        c = u.comments.create(
          body: Faker::Lorem.paragraphs(rand(1..2)).join("\n"), post:p)
        c.update_attribute(:created_at, Time.now - rand(600..31536000))
        c.save
      end
    end
    topics.rotate!
  end
end

u = User.new(
  name: 'Admin User',
  email: 'admin@example.com', 
  password: 'helloworld', 
  password_confirmation: 'helloworld')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'admin')

u = User.new(
  name: 'Moderator User',
  email: 'moderator@example.com', 
  password: 'helloworld', 
  password_confirmation: 'helloworld')
u.skip_confirmation!
u.save
u.update_attribute(:role, 'moderator')

u = User.new(
  name: 'Member User',
  email: 'member@example.com', 
  password: 'helloworld', 
  password_confirmation: 'helloworld')
u.skip_confirmation!
u.save

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
