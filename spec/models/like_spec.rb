require 'rails_helper'

describe Like do
  describe '#create' do
    it 'いいねが登録できる' do
      expect(create(:like)).to be_truthy
    end

    it 'ユーザー登録していなければいいねができない(user_id が not null)' do
      expect {create(:like, user_id: nil)}.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'valueが1以外のものは登録できない' do
      like = build(:like, value: 2)
      like.valid?
      expect(like.errors[:value]).to include('must be equal to 1')
    end

    context '一つの商品に対して一度しかいいねができない' do
      let(:like) {create(:like)}
      let(:same_like) {build(:like, user_id: like.user.id, merchandise_id: like.merchandise.id)}

      it '同一商品に対して同一ユーザーのいいねは一つのみ' do
        same_like.valid?
        expect(same_like.errors[:user_id]).to include('has already been taken')
      end

      it 'いいね取り消し後、再度いいねすることができる' do
        like.delete
        expect(same_like.save).to be_truthy
      end
    end
  end

  describe '#destroy' do
    before do
      @like = create(:like)
    end

    it 'いいねが削除できる' do
      expect(@like.delete).to be_truthy
    end

    it 'コメント先の商品が削除された場合、いいねも削除される' do
      expect{@like.merchandise.destroy}.to change{ Like.count }.by(-1)
    end

    it 'ユーザーが削除されたら、そのユーザーのいいねも削除される' do
      expect{@like.user.destroy}.to change { Like.count }.by(-1)
    end
  end
end
