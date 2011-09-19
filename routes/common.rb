class Skeleton
  
  #global error handler
  error do
    erb :error
  end
  
  not_found do 
    erb :'404'
  end
  
  # before and after filters
  before do
  end
  
  after do
  end
    
end