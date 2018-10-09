class Collection
  def initialize(file_path)
    @things =
      Dir["#{file_path}/*.txt"].map do |file|
        Thing.new(file)
      end
  end

  def things_types
    @things.map{|thing| thing.type}.uniq
  end

  def things_same_type(type)
    @things.select{|thing| thing.type == type}
  end

  def fit_things(degree)
    things_types.map{|type| things_same_type(type).select{|thing| thing.is_fit?(degree)}.
      sample}.compact
  end
end



