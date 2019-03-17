require 'dotenv/load'
require 'bundler'
Bundler.require


require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
#   post '/job_type' do
#     " #{params[:user_name]}, #{params[:desired_job]}, #{params[:desired_salary]}, #{params[:desired_location]} "
# end

post '/job_type' do
  # puts params
  @user_name = params[:user_name]
  @desired_job = params[:desired_job]
  @desired_salary = params[:desired_salary]
  @desired_location = params[:desired_location]
  
  erb :result
end

post '/result' do
  # puts params
end
end
