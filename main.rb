require_relative 'lib/thing'
require_relative 'lib/collection'

data_path = "#{File.dirname(__FILE__)}/data"

collection = Collection.new(data_path)

puts "Сколько градусов за окном? (можно с минусом)"
user_input = STDIN.gets.to_i

puts
puts "Предлагаем сегодня надеть:"
puts


collection.thing_types.each do |type|
  puts type
  fit = collection.fit_things(type, user_input)

  puts fit unless fit == nil
end

