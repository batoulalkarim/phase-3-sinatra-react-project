require 'sinatra'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  post "/login" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/organizations' do 
    organization = Organization.all
    organization.to_json
  end

  # edit this for when you select an org from the drop down menu and want to pop page with specific org.
  get './organizations/:id' do 
    organization = Organization.find(params[:id])

    organization.to_json(include: :tasks)
  end


  get '/volunteers' do 
    volunteer = Volunteer.all
    volunteer.to_json
  end

  get '/tasks' do 
    task = Task.all
    task.to_json
  end

end
