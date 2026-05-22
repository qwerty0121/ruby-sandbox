# 第3問：文字列操作と多重代入によるURLパラメーター解析

# URLのクエリ文字列を解析し、パラメータをハッシュとして取得する
def parse_url_params(params_str)
  params_str.to_s.split("&").reject(&:empty?).to_h { |tokens| tokens.split("=", 2) }
end

# ケース1
puts parse_url_params("page=1&sort=desc")

# ケース2
puts parse_url_params("status=active")

# ケース3
puts parse_url_params("q=ruby&filter=")
