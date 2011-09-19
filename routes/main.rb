class Skeleton

  get '/' do

    name = params[:name]
  
    if (name)
      @my_var = say_hi(name)
    else
      @my_var = 'Hello World!' 
    end

  erb :index
  
  end

end