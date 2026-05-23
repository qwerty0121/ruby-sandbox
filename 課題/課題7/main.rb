# 第7問：ブロックを受け取る独自メソッドの作成（制御構造の自作）

# 指定回数分だけ処理を繰り返す
def repeat_process(n)
  # ブロックが渡されていない場合
  return "No block given" unless block_given?

  (0..n-1).each { |i| yield i }
end

# ケース1
puts "--- start ---"
repeat_process(3) { |i| puts i }
puts "---  end  ---"

# ケース2
sum = 0
repeat_process(5) { |i| sum += i }
puts "sum = #{sum}"

# ケース3
puts repeat_process(5)
