require 'faker'

Student.create(
  first_name: Faker::Name.first_name, 
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.phone_number,
  short_bio: Faker::Lorem.paragraph,
  linkedin_url: Faker::Internet.url('linkedin.com/in/'),
  twitter_handle: Faker::Twitter.screen_name,
  personal_blog_url: Faker::Internet.url,
  online_resume_url: Faker::Internet.url, 
  github_url: Faker::Internet.user_name,
  photo: "photo.jpg",
  password: "password"
  )

