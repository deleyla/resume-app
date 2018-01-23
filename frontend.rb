require 'unirest'
require 'pp'
base_url = 'localhost:3000'

p 'choose an option'

p '[1] show all educations'
p '[2] show a particular education'
p '[3] add an education'
p '[4] update an education'
p '[5] delete an education'
p '[6] show all experiences'
p '[7] show a particular experience'
p '[8] add an experience'
p '[9] update an experience'
p '[10] delete an experience'


user_input = gets.chomp

if user_input == '1'
  response = Unirest.get("#{base_url}/educations")
  pp response.body
elsif user_input == '2'
  p 'enter id of education you want to view'
  education_id = gets.chomp
  response = Unirest.get("#{base_url}/educations/#{education_id}")
  pp response.body
elsif user_input == '3'
  the_params = {}
  p 'enter the start date'
  the_params[:start_date] = gets.chomp
  p 'enter the end date'
  the_params[:end_date] = gets.chomp
  p 'enter the degree received'
  the_params[:degree] = gets.chomp
  p 'enter the name of the university'
  the_params[:university_name] = gets.chomp
  p 'enter the details'
  the_params[:details] = gets.chomp
  response = Unirest.post("#{base_url}/educations", parameters:the_params)
  pp response.body
elsif user_input == '4'
  p 'enter the id of the education you want to update'
  education_id = gets.chomp
  response = Unirest.get("#{base_url}/educations/#{education_id}")
  education = response.body
  the_params = {}
  p "enter the new start_date. it is currently #{education['start_date']}"
  the_params[:start_date] = gets.chomp
  p "enter the new end_date. it is currently #{education['end_date']}"
  the_params[:end_date] = gets.chomp
  p "enter the new degree. it is currently #{education['degree']}"
  the_params[:degree] = gets.chomp
  p "enter the new university name. it is currently #{education['university_name']}"
  the_params[:start_date] = gets.chomp
  p "enter the new details. it is currently #{education['details']}"
  the_params[:start_date] = gets.chomp
  response = Unirest.patch("#{base_url}/educations/#{education_id}", parameters: the_params)
  pp response.body
elsif user_input == '5'
  p 'enter the id of the education you want to delete'
  education_id = gets.chomp
  response = Unirest.delete("#{base_url}/educations/#{education_id}")
  p 'education has been deleted'
elsif user_input == '6'
  response = Unirest.get("#{base_url}/experiences")
  pp response.body
elsif user_input == '7'
  p 'enter the id of the experience you want to view'
  experience_id = gets.chomp
  response = Unirest.get("#{base_url}/experiences/#{experience_id}")
  pp response.body
elsif user_input == '8'
  the_params = {}
  p 'enter the start_date'
  the_params[:start_date] = gets.chomp
  p 'enter the end_date'
  the_params[:end_date] = gets.chomp
  p 'enter the job title'
  the_params[:job_title] = gets.chomp
  p 'enter the company_name'
  the_params[:company_name] = gets.chomp
  p 'enter the details'
  the_params[:details]
  response = Unirest.post("#{base_url}/experiences", parameters: the_params)
  pp response.body
elsif user_input == '9'
  p 'enter the id of the experience you want to update'
  experience_id = gets.chomp
  response = Unirest.get("#{base_url}/experiences/#{experience_id}")
  experience = response.body
  the_params = {}
  p "enter the new start_date. it is currentyl #{experience['start_date']}"
  the_params[:start_date] = gets.chomp
  p "enter the new end_date. it is currently #{experience['end_date']}"
  the_params[:end_date] = gets.chomp
  p "enter the new job_title. it is currently #{experience['job_title']}"
  the_params[:job_title] = gets.chomp
  p "enter the new company name. it is currently #{experience['company_name']}"
  the_params[:company_name] = gets.chomp
  p "enter the new details. they are currently #{experience['details']}"
  the_params[:details] = gets.chomp
  response = Unirest.patch("#{base_url}/experiences/#{experience_id}", parameters: the_params)
  pp response.body
elsif user_input == '10'
  p 'enter the id of the experience you want to delete'
  experience_id = gets.chomp
  response = Unirest.delete("#{base_url}/experiences/#{experience_id}")
  p 'education has been deleted'
end
