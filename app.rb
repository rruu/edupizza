# Encoding: utf-8
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

# debug on/off
#set :show_exceptions, false

class Goods < ActiveRecord::Base
#    validates :post_title, uniqueness: true
#    validates :post_body, uniqueness: true
end

class Categories < ActiveRecord::Base
end

class Orders < ActiveRecord::Base
end

before do
    @greeting = ["Bones Festes!","节日快乐 ","Sretni praznici!","Glædelig jul og godt nytår","Prettige feestdagen",
        "Happy Holidays!","Joyeuses fêtes !","Beannachtaí na Féile","Frohe Feiertage","Καλές διακοπές! (kales diakopes)",
        "Hau’oli Lanui","חג שמח","Boldog ünnepeket!","Gleðilega hátíð","Laethanta saoire sona","Buone Feste!","良い休日をお過ごしください",
        "행복한 휴일이 되십시오!","Felix feriarum","Linksmų švenčių!","节日快乐!","سال نو مبارک!","Wesołych Świąt","Boas Festas!","Sărbători fericite!",
        "С праздником!","Vesele praznike!","Holide Ezimyoli","¡Felices Fiestas!","God Helg","Mutlu tatiller!","Chúc kỳ nghỉ lễ vui vẻ!","Cyfarchion y tymor"]

    @random_greeting = @greeting.sample

    @cats = Categories.all

    @goods = Goods.all
end

get '/' do
    erb :index
  end

post '/create' do
    @message, @type = 'Your order created', 'info'
    @orders_input = params[:orderstring]
    @items = parse_orders_input @orders_input
    erb :index
end

get '/create' do
    @orders_input = params[:orderstring]

    erb :index
end

get '/about' do
    erb :about
end


get '/orders' do
    erb :cart
end


def parse_orders_input orders_input
    arr = []
    orders = orders_input.split(',').each do |i|  
        arr2 = [ i.split(':')[0], i.split(':')[1] ]
        arr.push arr2
    end

    return arr
end