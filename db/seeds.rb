
require 'faker'

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

# 4.times do
#   Education.create!(
#     start_date: Faker::Date.backward(14),
#     end_date: Faker::Date.forward(23),
#     degree: Faker::Educator.course,
#     university_name: Faker::University.name,
#     details: 'not available'
#   )

#   Experience.create!(
#     start_date: Faker::Date.backward(14),
#     end_date: Faker::Date.forward(23),
#     job_title: Faker::Company.profession,
#     company_name: Faker::Company.name,
#     details: 'not available'
#   )
# end

Skill.create!([
  {skill_name: "javascript"},
  {skill_name: "ruby"},
  {skill_name: "html"},
  {skill_name: "css"},
  {skill_name: "python"}
])

Capstone.create!([
  {name: "phone_app", 
   description: "this does something awesome!",
   url: "www.yahoo.com",
   screenshot: "asdf"},
  {name: "sweet_app", 
   description: "this does something sweet!",
   url: "www.google.com",
   screenshot: "asdf"},
  {name: "awesome_app", 
   description: "this does something super awesome!",
   url: "www.walmart.com",
   screenshot: "asdf"},
  {name: "cool_app", 
   description: "this does something cool!",
   url: "www.youtube.com",
   screenshot: "asdfc"} 
])


  Experience.create!(
    start_date: Faker::Date.backward(14),
    end_date: Faker::Date.forward(23),
    job_title: Faker::Company.profession,
    company_name: Faker::Company.name,
    details: 'not available'
  )
end
