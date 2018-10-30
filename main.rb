#Программа, которая рекомендует, как одеться сегодня по погоде.
require_relative 'lib/thing'
require_relative 'lib/collection'

require 'net/http'
require 'rexml/document'

data_path = "#{File.dirname(__FILE__)}/data"

collection = Collection.new(data_path)

temperature = Collection.current_temperature(37)

list = collection.fit_things(temperature)

if list.empty?
  puts "К сожалению, ничего не можем посоветовать."
else
  puts "В Москве сейчас #{temperature}°C"
  puts
  puts "Предлагаем сегодня надеть:"
  puts
  puts list
end
