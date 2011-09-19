require 'sinatra/base'

module Sinatra
  
  module CommonHelper

    include Rack::Utils
    alias_method :h, :escape_html

  end
  
  helpers CommonHelper
  
end
