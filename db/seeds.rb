
Student.create(
  first_name: Faker::Name.first_name, 
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.phone_number,
  short_bio: Faker::Lorem.paragraph,
  twitter_handle: Faker::Twitter.screen_name,
  personal_blog_url: Faker::Internet.url,
  online_resume_url: Faker::Internet.url, 
  github_url: Faker::Internet.user_name,
  photo: "photo.jpg",
  password: "password"
  )

Student.create(
  first_name: "Test",
  last_name: "Testerson",
  email: "test@test.com",
  phone_number: "1234567890",
  short_bio: "asdf",
  linkedin_url: "test@test.com",
  twitter_handle: "@test",
  personal_blog_url: "test@test.com",
  online_resume_url: "test@test.com",
  github_url: "test@test.com",
  photo: "photo.jpg",
  password: "password"
  )
