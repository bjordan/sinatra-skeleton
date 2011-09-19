require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra/base'
require 'sinatra/reloader'
require 'erb'

class Skeleton < Sinatra::Base
  
  #production specific application configuration settings 
  configure :production do
    
    #disable so that errors are routed through error block    
    set :raise_errors, Proc.new { false }
    set :show_exceptions, false
  
  end 

  #development specific application configuration settings 
  configure :development do
    register Sinatra::Reloader   
  end
  
  #general application configuration settings 
  configure do
    
    set :root, File.dirname(__FILE__)
    set :public, 'public'
    
  end  

end

#reopen Skeleton class and add further funtionality
require_relative 'helpers/init'
require_relative 'models/init'
require_relative 'routes/init'