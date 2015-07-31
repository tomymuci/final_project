require 'bundler'
Bundler.require

class MyApp < Sinatra::Base
  
  configure do 
    enable :sessions
    set :session_secret, 'smalljobs'
  end
  

  get '/wants_jobs' do
    erb :wants_jobs
  end

  get '/Dog_Walking' do
    erb :Dog_Walking
  end
  
  
   get '/' do
     erb :index
  end
  
  
  get '/Babysitting' do
    erb :Babysitting
  end
  
  get'/Grocery_Shopping' do
    erb :Grocery_Shopping
  end
  
  get '/Laundry' do
    erb :Laundry
  end
  
  get '/Pet_Feeding' do
    erb :Pet_Feeding
  end
  
  get '/needs_someone' do
    erb :needs_someone
  end
  
   
  get '/Plant_Watering' do
    erb :Plant_Watering
  end
  
  get '/Tutoring' do
    erb :Tutoring
  end
  
  
  get '/babysitter_results' do
    erb :babysitter_results
  end
  
  get '/Dog_Walking_results' do
  erb :Dog_Walking_results
end

  get '/Grocery_Shopping_results' do
erb :Grocery_Shopping_results
  end
  
  get '/Pet_Feeding_results' do
  erb :Pet_Feeding_results
  end

  get '/Laundry_results' do
  erb :Laundry_results
  end

  
  get '/Plant_Watering_results' do
erb :Plant_Watering_results
  end

  get '/Tutoring_results' do
  erb :Tutoring_results
  end

  get '/About_us' do
    erb :About_us
  end
  

  post '/babysitter_results' do
    @name = session[:name]
    @kids = session[:kids]
    @contact = session[:contact]
    @zip_code = session[:Zip_Code]
    session[:name]=@name
    session[:kids]=@kids
    session[:contact]=@contact
    session[:Zip_Code]=@zip_code
    erb :babysitter_results
  end
  
  get '/read_babysitter_results' do
    @name = session[:name]
    @kids = session[:kids]
    @contact = session[:contact]
    @zip_code = session[:Zip_Code]
    erb :read_babysitter_results
  end
    
  
  post '/Dog_Walking_results' do
    @name = session[:name]
    @zip_code = session[:Zip_Code]
    @contact = session[:contact]
    @dogs = session[:dogs]
    session[:name]=@name
    session[:dogs]=@dogs
    session[:contact]=@contact
    session[:Zip_Code]=@zip_code
    erb :Dog_Walking_results
  end
  
  get '/read_dog_walking_results' do
    @name = session[:name]
    @dogs = session[:dogs]
    @contact = session[:contact]
    @zip_code = session[:Zip_Code]
    erb :read_dog_walking_results
  end
  
  post '/Grocery_Shopping_results' do
    @name = session[:name]
    @zip_code = session[:Zip_Code]
    @contact = session[:contact]
    session[:name]=@name
    session[:contact]=@contact
    session[:Zip_Code]=@zip_code
    erb :Grocery_Shopping_results
  end
  
  get '/read_grocery_shopping_results' do
    @name = session[:name]
    @contact = session[:contact]
    @zip_code = session[:Zip_Code]
    erb :read_babysitter_results
  end
  
  post '/Pet_Feeding_results' do
    @name = params[:name]
    @zip_code = params[:Zip_Code]
@contact = params[:contact]
    session[:name]=@name
    session[:contact]=@contact
    session[:Zip_Code]=@zip_code
    erb :Pet_Feeding_results
  end
  
  
  get '/read_pet_feeding_results' do
    @name = session[:name]
    @contact = session[:contact]
    @zip_code = session[:Zip_Code]
    erb :read_pet_feeding
  end
  
  post '/Laundry_results' do
    @name = params[:name]
    @zip_code = params[:Zip_Code]
@contact = params[:contact]
    @loads = params[:loads]
    session[:name]=@name
    session[:loads]=@loads
    session[:contact]=@contact
    session[:Zip_Code]=@zip_code
    erb :Laundry_results
  end
  
  get '/read_laundry_results' do
    @name = session[:name]
    @contact = session[:contact]
    @zip_code = session[:Zip_Code]
    @loads = session[:loads]
    erb :read_laundry_results
  end

  post '/Plant_Watering_results' do
    @name = params[:name]
    @zip_code = params[:Zip_Code]
@contact = params[:contact]
    session[:name]=@name
    session[:contact]=@contact
    session[:Zip_Code]=@zip_code
    erb :Plant_Watering_results
  end
  
  get '/read_plant_watering_results' do
    @name = session[:name]
    @contact = session[:contact]
    @zip_code = session[:Zip_Code]
    erb :read_plant_watering_results
  end
  
  post '/Tutoring_results' do
    @name = params[:name]
    @subject = params[:subject]
    @zip_code = params[:Zip_Code]
@contact = params[:contact]
    session[:name]=@name
    session[:subject]=@subject
    session[:contact]=@contact
    session[:Zip_Code]=@zip_code
    erb :Tutoring_results
  end
  
  get '/read_tutoring_results' do
    @name = session[:name]
    @contact = session[:contact]
    @zip_code = session[:Zip_Code]
    @subjects = session[:subject]
    erb :tutoring_results
  end
  
end