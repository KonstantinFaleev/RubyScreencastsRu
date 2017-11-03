require_relative "string"
require_relative "item_container"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "antique_item"
require_relative "cart"
require_relative "order"
require_relative "store_application"

puts StoreApplication.new == StoreApplication.new
StoreApplication.config do |app|

  app.name = "My Store"
  app.environment = :production

  app.admin do |admin|
    admin.email = "admin@mystore.com"
    admin.login = "admin"
    admin.send_info_emails_on :mondays
  end

end

p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login

@items = []
@items << AntiqueItem.new({:price => 101, :weight => 100, :name => "car"})
@items << RealItem.new({:weight => 100, :price => 101, :name => "kettle"})
@items << RealItem.new({:weight => 100, :price => 101, :name => "dishwasher"})

cart = Cart.new("konstantin")
cart.add_item RealItem.new({:weight => 100, :price => 101, :name => "car"})
cart.add_item RealItem.new({:weight => 100, :price => 150, :name => "car"})
cart.add_item RealItem.new({:weight => 100, :price => 120, :name => "kettle"})

puts @items[0].kind_of?(Item)
puts @items[0].kind_of?(AntiqueItem)

puts @items[0].class == AntiqueItem
puts @items[0].class == Item
puts @items[0].respond_to?(:info)

puts @items[0].send(:price)
puts @items[0].price

method = "all_cars"
#p cart.send(method)

