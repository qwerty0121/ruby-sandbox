# 第6問：独自クラスの定義と initialize によるカプセル化

# 銀行口座
class BankAccount
  # 口座名義, 残高
  attr_reader :name, :balance

  # 初期化メソッド
  #
  # @param name            [String]  口座名義
  # @param initial_balance [Integer] 残高
  def initialize(name, initial_balance)
    @name = name
    @balance = [initial_balance.to_i, 0].max
  end

  # 入金する
  # 
  # @param amount [Integer] 入金金額
  def deposit(amount)
    deposit_amount = amount.to_i

    # 入金金額が0以下である場合
    return false if deposit_amount <= 0

    @balance += deposit_amount
  end

  # 出金する。
  # 残高不足である場合は "Shortage" を返す。
  # 
  # @param amount [Integer] 出金金額
  def withdraw(amount)
    withdraw_amount = amount.to_i

    # 出金金額が0以下である場合
    return false if withdraw_amount <= 0

    # 残高不足の場合
    return "Shortage" if @balance < withdraw_amount

    @balance -= withdraw_amount
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
puts account2.balance

# ケース3
account3 = BankAccount.new("Sato", 1000)
puts account3.name
begin
  account3.name = "Tanaka"
rescue NoMethodError => e
  puts "期待通りエラーが発生しました： #{e.class}"
end

# 堅牢性の確認
bad_account = BankAccount.new("BadData", nil)
puts bad_account.balance

puts "bad_account.deposit(-500): #{bad_account.deposit(-500)}"
puts bad_account.balance

puts "bad_account.withdraw(-500): #{bad_account.withdraw(-500)}"
puts bad_account.balance
