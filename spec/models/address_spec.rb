require 'rails_helper'
require 'i18n'

I18n.locale = :en

describe Address do
  describe '#create' do

    # 1. addressテーブルの必須項目(building、phon_number以外)が存在すれば登録できること
    it "is valid with a first_name, last_name, first_name_kana, last_name_kana, postal_code, prefecture_id, city, number" do
      address = build(:address)
      expect(address).to be_valid
    end

    # 2. first_nameが空では登録できないこと
    it "is invalid without a first_name" do
      address = build(:address, first_name: nil)
      address.valid?
      expect(address.errors[:first_name]).to include("can't be blank")
    end

    # 3. last_nameが空では登録できないこと
    it "is invalid without a last_name" do
      address = build(:address, last_name: nil)
      address.valid?
      expect(address.errors[:last_name]).to include("can't be blank")
    end

    # 4. first_name_kanaが空では登録できないこと
    it "is invalid without a first_name_kana" do
      address = build(:address, first_name_kana: nil)
      address.valid?
      expect(address.errors[:first_name_kana]).to include("can't be blank")
    end

    # 5. last_name_kanaが空では登録できないこと
    it "is invalid without a last_name_kana" do
      address = build(:address, last_name_kana: nil)
      address.valid?
      expect(address.errors[:last_name_kana]).to include("can't be blank")
    end

    # 6. postal_codeが空では登録できないこと
    it "is invalid without a postal_code" do
      address = build(:address, postal_code: nil)
      address.valid?
      expect(address.errors[:postal_code]).to include("can't be blank")
    end

    # 7. prefecture_idが空では登録できないこと
    it "is invalid without a prefecture_id" do
      address = build(:address, prefecture_id: nil)
      address.valid?
      expect(address.errors[:prefecture_id]).to include("can't be blank")
    end

    # 8. cityが空では登録できないこと
    it "is invalid without a city" do
      address = build(:address, city: nil)
      address.valid?
      expect(address.errors[:city]).to include("can't be blank")
    end

    # 9. numberが空では登録できないこと
    it "is invalid without a number" do
      address = build(:address, number: nil)
      address.valid?
      expect(address.errors[:number]).to include("can't be blank")
    end

    # 10. phone_numberが12文字以上であれば登録できないこと
    it "is valid with a phone_number that has more than 12 characters " do
      user = build(:user, phone_number: "111111111111")
      user.valid?(:validates_step2)
      expect(user.errors[:phone_number]).to include("is too long (maximum is 11 characters)")
    end

    # 11. phone_numberが9文字以下であれば登録できないこと
    it "is invalid with a phone_number that has less than 9 characters " do
      user = build(:user, phone_number: "111111111")
      user.valid?(:validates_step2)
      expect(user.errors[:phone_number]).to include("is too short (minimum is 10 characters)")
    end
  end
end