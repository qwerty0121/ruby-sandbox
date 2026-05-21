# 商品マスタ
PRODUCTS = {
  apple: 100,
  banana: 80,
  orange: 120,
}

# 注文の合計金額を返す
def sum_price(orders)
  sum = 0
  for order in orders
    item = order[:item]
    price = PRODUCTS.fetch(item, 0)
    quantity = order[:quantity]
    sum += price * quantity
  end

  sum
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
puts "ケース1: #{sum_price(order1)}"

# ケース2
order2 = [
  {
    item: :banana,
  quantity: 5,
  }
]
puts "ケース2: #{sum_price(order2)}"

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
puts "ケース3: #{sum_price(order3)}"
