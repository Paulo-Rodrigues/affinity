puts 'seeding'

User.create(
  email: 'test@test.com',
  password: 'password',
  password_confirmation: 'password'
)

20.times do
  User.create(
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )

  puts User.last.email
end

200.times do |t|
  Thought.create(
    body: Faker::Lorem.sentence,
    user_id: (1..20).to_a.sample
  )

  puts "Thought #{t}"
end

puts 'done!'
