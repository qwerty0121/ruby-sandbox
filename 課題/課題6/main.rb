# 第6問：独自クラスの定義と initialize によるカプセル化

# 銀行口座
class BankAccount
  # 口座名義
  attr_reader :name
  # 残高
  attr_reader :balance

  # 初期化メソッド
  #
  # @param name            [String]  口座名義
  # @param initial_balance [Integer] 残高
  def initialize(name, initial_balance)
    @name = name
    @balance = initial_balance
  end

  # 入金する
  # 
  # @param amount [Integer] 入金金額
  def deposit(amount)
    @balance += amount
  end

  # 出金する。
  # 残高不足である場合は "Shortage" を返す。
  # 
  # @param amount [Integer] 出金金額
  def withdraw(amount)
    # 残高不足の場合
    return "Shortage" if @balance < amount

    @balance -= amount
  end

  # TODO: implements
end

# ケース1
account1 = BankAccount.new("Sato", 1000)
account1.deposit(500)
puts account1.balance

# ケース2
account2 = BankAccount.new("Sato", 1000)
puts account2.withdraw(1500)

# ケース3
account3 = BankAccount.new("Sato", 1000)
puts account3.name
account3.name = "Tanaka"
