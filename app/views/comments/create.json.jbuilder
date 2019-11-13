json.id @comment.id
json.(@comment, :comment)
json.user_name @comment.user.nickname
json.created_at @comment.created_at.strftime("%Y/%m/%d %H:%M")