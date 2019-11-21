require 'rails_helper'
require 'i18n'

I18n.locale = :en

describe User do
  describe '#create' do
    
    # 1. userテーブルの必須項目（profile_description以外のカラム）が存在すれば登録できること
    it "is valid with a first_name, last_name, first_name_kana, last_name_kana, nickname, password, birth_year, birth_month, birth_day, phone_number" do
      user = create(:user)
      expect(user).to be_valid
    end

    # 2. first_nameが空では登録できないこと
    it "is invalid without a first_name" do
      user = build(:user, first_name: nil)
      user.valid?
      expect(user.errors[:first_name]).to include("can't be blank")
    end

    # 3. last_nameが空では登録できないこと
    it "is invalid without a last_name" do
      user = build(:user, last_name: nil)
      user.valid?
      expect(user.errors[:last_name]).to include("can't be blank")
    end

    # 4. first_name_kanaが空では登録できないこと
    it "is invalid without a first_name_kana" do
      user = build(:user, first_name_kana: nil)
      user.valid?
      expect(user.errors[:first_name_kana]).to include("can't be blank")
    end

    # 5. last_name_kanaが空では登録できないこと
    it "is invalid without a last_name_kana" do
      user = build(:user, last_name_kana: nil)
      user.valid?
      expect(user.errors[:last_name_kana]).to include("can't be blank")
    end

    # 6. nicknameが空では登録できないこと
    it "is invalid without a nickname" do
      user = build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    # 7. passwordが空では登録できないこと
    it "is invalid without a password" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    # 8. birth_yearが空では登録できないこと
    it "is invalid without a birth_year" do
      user = build(:user, birth_year: nil)
      user.valid?
      expect(user.errors[:birth_year]).to include("can't be blank")
    end

    # 9. birth_monthが空では登録できないこと
    it "is invalid without a birth_month" do
      user = build(:user, birth_month: nil)
      user.valid?
      expect(user.errors[:birth_month]).to include("can't be blank")
    end

    # 10. birth_dayが空では登録できないこと
    it "is invalid without a birth_day" do
      user = build(:user, birth_day: nil)
      user.valid?
      expect(user.errors[:birth_day]).to include("can't be blank")
    end

    # 11. phone_numberが空では登録できないこと
    it "is invalid without a phone_number" do
      user = build(:user, phone_number: nil)
      user.valid?(:validates_step2)
      expect(user.errors[:phone_number]).to include("can't be blank")
    end

    # 12. passwordが存在してもpassword_confirmationが空では登録できないこと
    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

    # 13. 重複したemailが存在する場合登録できないこと
    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    # 14. passwordが7文字以上であれば登録できること
    it "is valid with a password that has more than 7 characters " do
      user = build(:user, password: "0000000", password_confirmation: "0000000")
      user.valid?
      expect(user).to be_valid
    end

    # 15. passwordが6文字以下であれば登録できないこと
    it "is invalid with a password that has less than 6 characters " do
      user = build(:user, password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
    end

    # 16. nicknameが21文字以上であれば登録できないこと
    it "is valid with a nickname that has more than 21 characters " do
      user = build(:user, nickname: "aaaaaaaaaaaaaaaaaaaaa")
      user.valid?
      expect(user.errors[:nickname]).to include("is too long (maximum is 20 characters)")
    end

    # 17. nicknameが20文字以下であれば登録できること
    it "is valid with a password that has less than 20 characters " do
      user = build(:user, nickname: "aaaaaaaaaaaaaaaaaaaa")
      user.valid?
      expect(user).to be_valid
    end

    # 18. phone_numberが12文字以上であれば登録できないこと
    it "is valid with a phone_number that has more than 12 characters " do
      user = build(:user, phone_number: "111111111111")
      user.valid?(:validates_step2)
      expect(user.errors[:phone_number]).to include("is too long (maximum is 11 characters)")
    end

    # 19. phone_numberが9文字以下であれば登録できないこと
    it "is invalid with a phone_number that has less than 9 characters " do
      user = build(:user, phone_number: "111111111")
      user.valid?(:validates_step2)
      expect(user.errors[:phone_number]).to include("is too short (minimum is 10 characters)")
    end
  end
end
