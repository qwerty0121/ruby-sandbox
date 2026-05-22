# 第4問：Enumerableマニア：ブロックを駆使したデータ集計

# 以下の条件を満たすユーザーの名前を全て大文字に変換して返す
# 1. 年齢が20歳以上
# 2. ロールが :admin でない
def extract_target_usernames(users)
  users
    .to_a
    .select { |user| user.fetch(:age, 0) >= 20 && user[:role] != :admin }
    .map { |user| user[:name].to_s.upcase }
end

# ケース1
puts extract_target_usernames(
  [
    { name: "Alice", age: 25, role: :admin },
    { name: "bob", age: 19, role: :member },
    { name: "Charlie", age: 30, role: :member },
    { name: "dave", age: 22, role: :guest }
  ]
).to_s

# ケース2
puts extract_target_usernames(
  [
    { name: "Alice", age: 25, role: :admin }
  ]
).to_s

# ケース3
puts extract_target_usernames(
  [
    { name: "emily", age: 20, role: :member }
  ]
).to_s
