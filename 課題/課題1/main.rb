# 商品マスタ
PRODUCTS = {
  apple: 100,
  banana: 80,
  orange: 120,
}.freeze

# 注文の合計金額を返す
def sum_price(orders, products)
  orders.sum do |order|
    item = order[:item]
    quantity = order.fetch(:quantity, 0)
    products.fetch(item, 0) * quantity
  end
end

# ケース1
order1 = [
  {
    item: :apple,
    quantity: 2,
  },
  {
    item: :orange,
    quantity: 1,
  },
]
puts "ケース1: #{sum_price(order1, PRODUCTS)}"

# ケース2
order2 = [
  {
    item: :banana,
    quantity: 5,
  }
]
puts "ケース2: #{sum_price(order2, PRODUCTS)}"

# ケース3
order3 = [
  {
    item: :apple,
    quantity: 1,
  },
  {
    item: :grape,
    quantity: 3,
  },
]
puts "ケース3: #{sum_price(order3, PRODUCTS)}"
