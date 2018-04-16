# Encoding: utf-8
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

# debug on/off
#set :show_exceptions, false

#class Goods < ActiveRecord::Base
#    validates :post_title, uniqueness: true
#    validates :post_body, uniqueness: true
#end


before do
end

get '/' do
erb :layout
  end


