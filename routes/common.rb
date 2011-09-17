class Skeleton < Sinatra::Base
  
  #global error handler
  error do
    #log error, redirect to friendly error page
    logger.error env['sinatra.error'].to_s 
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