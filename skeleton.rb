require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra/base'
require "sinatra/reloader"
require 'erb'
require 'logger'

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
    
    #set root as directory current file is in
    set :root, File.dirname(__FILE__)
    set :logging, true
    LOGGER = Logger.new("logs/log.log")
    #set :custom_var, 'custom_var'
    
  end  
 
  helpers do
    def logger
      LOGGER
    end
  end
 
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
  
  #root
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