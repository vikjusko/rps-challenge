
require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'Hello Battle!'
  end