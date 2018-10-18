#Класс содержит коллекцию экземпляров одежды и
#методы для работы с ними
class Collection
  attr_reader :things

  def initialize(file_path)
    @things =
      Dir["#{file_path}/*.txt"].map do |file|
        Thing.new(file)
      end
  end

  #возвращает все неповторяющиеся виды одежды
  def things_types
    @things.map{|thing| thing.type}.uniq
  end

  #возвращает всю одежду одного вида
  def things_same_type(type)
    @things.select{|thing| thing.type == type}
  end

  #возвращает массив рекомендованной одежды, взависимости от температуры
  def fit_things(degree)
    things_types.map{|type| things_same_type(type).select{|thing| thing.is_fit?(degree)}.
      sample}.compact
  end
end
