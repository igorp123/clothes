class Thing
  def initialize(file)
    file = File.readlines(file, encoding: 'UTF-8', chomp: true)
    @name = file[0]
    @type = file[1]
    @wheather_range = file[2]
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

  def is_fit?
  end

end
