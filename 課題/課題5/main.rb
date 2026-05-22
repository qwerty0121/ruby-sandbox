# 第5問：破壊的メソッドと非破壊的メソッドの挙動理解

# 配列の文字列の前後の空白・改行を除去した上で重複した要素を除去する ※非破壊版
def exclude_duplicate_with_trim(str_array)
  str_array.map(&:strip).uniq
end

# 配列の文字列の前後の空白・改行を除去した上で重複した要素を除去する ※破壊版
def exclude_duplicate_with_trim!(str_array)
  str_array.map!(&:strip).uniq!
end

arr = [" ruby \n", "java", " ruby", "python "]
puts arr.object_id

# ケース1
result1 = exclude_duplicate_with_trim(arr)
puts result1.to_s
puts result1.object_id
puts result1.object_id == arr.object_id

# ケース2
result2 = exclude_duplicate_with_trim!(arr)
puts result2.to_s
puts result2.object_id
puts result2.object_id == arr.object_id
