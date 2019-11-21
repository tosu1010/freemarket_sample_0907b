crumb :root do
  link "メルカリ", root_path
end

crumb :mypage_index do
  link "マイページ", mypage_index_path
end

crumb :mypage_edit do
  link "プロフィール", mypage_profile_path
  parent :mypage_index
end

crumb :mypage_new do
  link "本人情報の登録", mypage_identification_path
  parent :mypage_index
end

crumb :mypage_show do
  link "支払い方法", mypage_card_path
  parent :mypage_index
end

crumb :mypage_create do
  link "クレジットカード情報入力", mypage_card_create_path
  parent :mypage_show
end

crumb :logout_log_out do
  link "ログアウト", logout_path
  parent :mypage_index
end