# 第2問：条件分岐の「Rubyらしさ」を意識したうるう年判定

# 西暦がうるう年であるかどうかを判定する
def leap_year?(y)
  year = y.to_i

  # 「4で割り切れる」かつ「100で割り切れない」、または「400で割り切れる」
  (year % 4).zero? && !(year % 100).zero? || (year % 400).zero?
end

# ケース1
puts leap_year?(2020)

# ケース2
puts leap_year?(1900)

# ケース3
puts leap_year?(2000)
