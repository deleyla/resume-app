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

4.times do
  Education.create!(
    start_date: Faker::Date.backward(14),
    end_date: Faker::Date.forward(23),
    degree: Faker::Educator.course,
    university_name: Faker::University.name,
    details: 'not available'
  )

  Experience.create!(
    start_date: Faker::Date.backward(14),
    end_date: Faker::Date.forward(23),
    job_title: Faker::Company.profession,
    company_name: Faker::Company.name,
    details: 'not available'
  )
end

