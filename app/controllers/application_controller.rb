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

  get '/organizations/nested_tasks' do
      "Hello World"
    end

  # post '/organizations' do
  #   organization = Organization.create(organization_params)

  #   private 

  #   def organization_params
  #       params.require(:organization).permit(tasks_attributes: [build: {}, pack_and_ship: {}, installation: {}], volunteer_attributes: [:volunteer_id])
  #   end

  #   organization.to_json
  # end 

  delete '/tasks' do
    tasks = Task.destroy
    tasks.to_json
  end

  patch '/tasks/:id' do
    task = Task.find(params[:id])
    task.update(
    time_commitment_hours: params[:time_commitment_hours]
    )
    review.to_json
  end

end
