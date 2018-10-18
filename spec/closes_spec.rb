require 'collection'
require 'thing'

describe Thing do
  it 'returns instance variables' do
    thing = Thing.new("spec/fixtures/1.txt")
    expect(thing.name).to eq "Бейсболка"
    expect(thing.type).to eq "Головной убор"
    expect(thing.wheather_range).to eq (5..40)
  end

  it 'returns full name' do
    thing = Thing.new("spec/fixtures/1.txt")
    expect(thing.to_s).to eq "Бейсболка (Головной убор) 5..40"
  end

  it 'returns is the thing fit the wheather' do
    thing = Thing.new("spec/fixtures/1.txt")
    expect(thing.is_fit?(10)).to be_truthy
  end
end

describe Collection do
  it 'returns number of things' do
    collection = Collection.new("spec/fixtures/")
    expect(collection.things.size).to eq 5
  end

  it 'returns number of pants' do
    collection = Collection.new("spec/fixtures/")
    expect(collection.things_same_type("Штаны").map{|thing| thing.name}).to eq %w(Брюки Джинсы)
  end

  it 'returns names of fit closes' do
    collection = Collection.new("spec/fixtures/")
    expect(%w(Бейсболка Кепка).include? collection.fit_things(5)[0].name).to be_truthy
    expect(%w(Брюки Джинсы).include? collection.fit_things(5)[1].name).to be_truthy
    expect(%w(Кроссовки).include? collection.fit_things(5)[2].name).to be_truthy
  end
end
