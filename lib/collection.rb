class Collsection
  def initialize(file_path)
    @things =
      Dir["#{file_path}/.txt"].map do |file|
        thing.new(file)
      end
  end

  def things
    @things
  end

end
