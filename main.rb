require_relative 'lib/thing'
require_relative 'lib/collection'

data_path = "#{File.dirname(__FILE__)}/data"

collection = Collection.new(data_path)

puts "Сколько градусов за окном? (можно с минусом)"
user_input = STDIN.gets.to_i

list =  collection.fit_things(user_input)

if list.empty?
  puts
  puts "К сожалению, ничего не можем посоветовать."
else
  puts
  puts "Предлагаем сегодня надеть:"
  puts
  puts list
end
