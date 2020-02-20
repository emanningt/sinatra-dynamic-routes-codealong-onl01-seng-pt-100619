require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

  get '/medicines/:id' do
  @medicine = all_the_medicines.select do |medicine|
    medicine.id == params[:id]
  end.first
  erb :'/medicines/show.html'
end

  get '/goodbye/:name' do 
   @medicin = all_the_medicines.select do |name|
     name.id == params[:id]
   end.first
  end 
  
  get '/multiply/:num1/:num2' do 
    @medicin = all_the_medicines.select do |nums|
     nums.id == params[:id]
   end.first
  end 
  
end