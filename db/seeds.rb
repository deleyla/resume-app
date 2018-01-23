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