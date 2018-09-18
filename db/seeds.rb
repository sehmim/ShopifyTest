# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


shop = Shop.create([
    { name:'My Shop'},
    { name:'My Shop 2'}
])

products = Product.create([
    { name: 'Soap', price: 2.99, shop_id: 2 , quantity: 1},
    { name: 'Brush', price: 1.99, shop_id: 2, quantity: 1},
    { name: 'Savon', price: 1.99, shop_id: 1, quantity: 1},
    { name: 'Goat Milk', price: 1.99, shop_id: 2, quantity: 1},
])

orders = Order.create([
    { name: 'Balls', quantity: 2, shop_id: 2 , price: 2.99 },
    { name: 'Bats', quantity: 4, shop_id: 1 , price: 2.99 },
    { name: 'nets', quantity: 20, shop_id: 1 , price: 2.99 },
    { name: 'Gloves', quantity: 210, shop_id: 2 , price: 2.99 }
])

line_items = Line_items.create([
    { name: 'Balls', quantity: 2, product_id: 2 , order_id: 2, price: 2.99 },
    { name: 'Bats', quantity: 4, product_id: 1 , order_id: 2, price: 2.99 }
])