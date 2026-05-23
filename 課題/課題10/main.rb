# 第10問：Mix-in（モジュールの組み込み）による共通機能の拡張

module Serializable
  def to_json_string
    instance_variables.to_h { |v| [v, instance_variable_get(v)] }
  end
end

class Product
  include Serializable

  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Log
  include Serializable

  attr_reader :msg, :level

  def initialize(msg, level)
    @msg = msg
    @level = level
  end
end

# ケース1
p = Product.new("Apple", 100)
puts p.to_json_string

# ケース2
l = Log.new("Login success", "INFO")
puts l.to_json_string

# ケース3
puts Product.include?(Serializable)
