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
    @greeting = ["Bones Festes!","节日快乐 ","Sretni praznici!","Glædelig jul og godt nytår","Prettige feestdagen",
        "Happy Holidays!","Joyeuses fêtes !","Beannachtaí na Féile","Frohe Feiertage","Καλές διακοπές! (kales diakopes)",
        "Hau’oli Lanui","חג שמח","Boldog ünnepeket!","Gleðilega hátíð","Laethanta saoire sona","Buone Feste!","良い休日をお過ごしください",
        "행복한 휴일이 되십시오!","Felix feriarum","Linksmų švenčių!","节日快乐!","سال نو مبارک!","Wesołych Świąt","Boas Festas!","Sărbători fericite!",
        "С праздником!","Vesele praznike!","Holide Ezimyoli","¡Felices Fiestas!","God Helg","Mutlu tatiller!","Chúc kỳ nghỉ lễ vui vẻ!","Cyfarchion y tymor"]
    @random_greeting = @greeting.sample
end



get '/' do
erb :layout
  end


