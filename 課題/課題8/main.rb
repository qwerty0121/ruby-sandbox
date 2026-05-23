# 第8問：例外処理（内部例外の捕捉と再発生）

def safe_divide(str_a, str_b)
  num_a = Integer(str_a)
  num_b = Integer(str_b)

  num_a / num_b
rescue ZeroDivisionError
  Float::INFINITY
rescue ArgumentError, TypeError
  raise RuntimeError, "Invalid Number"
end

# ケース1
puts safe_divide("10", "2")

# ケース2
puts safe_divide("10", "0")

# ケース3
begin
  puts safe_divide("10", "xyz")
rescue RuntimeError => e
  puts "期待通りエラーが発生しました: #{e.class}, #{e.message}"
end

# その他
begin
  puts safe_divide("10", nil)
rescue RuntimeError => e
  puts "期待通りエラーが発生しました: #{e.class}, #{e.message}"
end
