class Item
  def initialize(options={})
    @price = options[:price]
    @weight = options[:weight]
    @name = options[:name]
  end

  attr_reader :price, :weight, :name
  attr_writer :price

  der info
    yield(price)
    yield(weight)
    yield(name)
    #[price, weight, name]
    #price.to_s + ", " + weight.to_s + ", " + name

  end

end
