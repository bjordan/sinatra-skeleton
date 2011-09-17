class Skeleton < Sinatra::Base

  get '/' do
    
    name = params[:name]
  
    if (name)
      @my_var = 'Hello ' + name.capitalize + '.'
    else
      @my_var = 'Hello World!' 
    end

  erb :index
  
  end

end