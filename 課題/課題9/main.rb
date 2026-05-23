# 第9問：オブジェクト指向：クラスの継承とメソッドオーバーライド

class RegularMember
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def charge(base_price)
    Integer(base_price)
  end
end

class PremiumMember < RegularMember
  DISCOUNT_RATE = 0.8r
  FIXED_FEE = 500

  def initialize(name)
    super
  end

  def charge(base_price)
    # 通貨が円なので小数点以下切り捨て
    (super(base_price) * DISCOUNT_RATE).floor + FIXED_FEE
  end
end

# ケース1
member = RegularMember.new("Alice")
puts member.name
puts member.charge(3000)

# ケース2
premium = PremiumMember.new("Bob")
puts premium.name
puts premium.charge(3000)

# ケース3
puts PremiumMember.new("Bob").is_a?(RegularMember)
