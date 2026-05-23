# 第9問：オブジェクト指向：クラスの継承とメソッドオーバーライド

class RegularMember
  def initialize(name)
    @name = name
  end

  def charge(base_price)
    base_price.to_i
  end
end

class PremiumMember < RegularMember
  def charge(base_price)
    # 通貨が円なので小数点以下切り捨て
    (base_price.to_i * 0.8).round(0, half: :down) + 500
  end
end

# ケース1
member = RegularMember.new("Alice")
puts member.charge(3000)

# ケース2
premium = PremiumMember.new("Bob")
puts premium.charge(3000)

# ケース3
puts PremiumMember.new("Bob").is_a?(RegularMember)
