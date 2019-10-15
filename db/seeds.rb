require 'nokogiri'

# merukariのhtmlファイルを開いて、docという変数に代入
f = File.open("#{Dir.pwd}/public/merukari.html")
doc = Nokogiri::HTML(f)
f.close()

# ヘッダーの「カテゴリ一覧」のところから取得する。

# 「レディース」「メンズ」等の一番親となる要素を取得
for elem in doc.at(".pc-header-nav-parent-wrap").css(".pc-header-nav-parent")

  # 「レディース」「メンズ」等の文字列を取得
  for parent_elem in elem.css("h3 > a")
    # 取得した要素をCategoryテーブルの name 列に入れる
    parent = Category.create(name: "#{parent_elem.content}")

    # さらに子要素となる「トップス」「パンツ」等を取得
    for elem_2 in elem.css('.pc-header-nav-child')
      # parentの子要素としてDBに登録(childrenはancestryのメソッド)。さらに、childという変数に代入
      child = parent.children.create(name: "#{elem_2.at('a').content}")

      # 孫要素となる「Tシャツ」等を取得
      for grand_child in elem_2.css('.pc-header-nav-grand-child > a')
        # childの子要素としてDBに登録
        child.children.create(name: "#{grand_child.content}")
      end
    end
  end
end