class Thing

  attr_reader :type, :wheather_range

  def initialize(file)
    file = File.readlines(file, encoding: 'UTF-8', chomp: true)

    @name = file[0]

    @type = file[1]

    wheather = file[2].delete("\(\)").split(',').map {|x| x.to_i}
    @wheather_range = wheather[0]..wheather[1]
  end

  def is_fit?(degree)
    wheather_range.include?(degree)
  end

  def to_s
    "#{@name} (#{@type}) #{@wheather_range}"
  end
end
