require 'rails_helper'


describe Comment do
  describe '#create' do
    it 'コメントの中身がなければ投稿できない(commentがnot null)' do
      comment = build(:comment, comment: nil)
      comment.valid?
      expect(comment.errors[:comment]).to include("can't be blank")
    end

    it 'ログインしなければ、コメントできない(user_idがnot null)' do
      expect {create(:comment, user_id: nil)}.to raise_error(ActiveRecord::RecordInvalid)
    end
    
    it 'ログインしていればコメントできる' do
      expect(create(:comment)).to be_truthy
    end
  end

  describe '#destory' do
    before do
      @comment = create(:comment)
    end

    it 'コメントが削除できる' do
      expect(@comment.delete).to be_truthy
    end

    it 'コメント先の商品が削除された場合、コメントも削除される' do
      expect{@comment.merchandise.destroy}.to change{ Comment.count }.by(-1)
    end
    
    it 'ユーザーが削除されたら、そのユーザーが投稿したコメントも削除される' do
      expect{@comment.user.destroy}.to change { Comment.count }.by(-1)
    end
  end
end