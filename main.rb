require_relative 'lib/thing'
require_relative 'lib/collection'

data_path = "#{Files.dirname(__FILE__)}/data"

collection = Collection.new(data_path)

puts collection.things
