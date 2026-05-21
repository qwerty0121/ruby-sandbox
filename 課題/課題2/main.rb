# 第2問：条件分岐の「Rubyらしさ」を意識したうるう年判定

# 西暦がうるう年であるかどうかを判定する
def leap_year?(year)
  # 4で割り切れない年はうるう年ではない
  return false unless year % 4 == 0

  # 400で割り切れる場合はうるう年
  return true if year % 400 == 0

  # 100で割り切れる年はうるう年ではない
  return false if year % 100 == 0

  true
end

# ケース1
puts leap_year?(2020)

# ケース2
puts leap_year?(1900)

# ケース3
puts leap_year?(2000)
