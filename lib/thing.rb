class Thing
  def initialize(file)
    file = File.readlines(file, encoding: 'UTF-8', chomp: true)
    @name = file[0]
    @type = file[1]
    @wheather_range = file[2].delete("\(\)").split(',').map {|x| x.to_i}
    puts @wheather_range.join(',')
  end

  def name
    @name
  end

  def type
    @type
  end

  def wheather_range
    @wheather_range
  end

  def is_fit?(degree)
    wheather_range.include?(degree)
  end

  def to_s
    "#{@name} (#{@type}) #{@wheather_range.join('..')}"
  end
end
