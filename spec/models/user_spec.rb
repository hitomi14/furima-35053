require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'nicknameとemail、passwordとpassword_confirmation、first_name、family_name、first_name_kana、family_name_kana、birth_dayが存在すれば登録できる' do
      end

      it 'passwordとpassword_confirmationが6文字以上、半角英数字混合であれば登録できる' do
      end
    end

    context '新規登録できないとき' do
      it 'nicknameが空では登録できない' do
      end

      it 'emailが空では登録できない' do
      end

      it 'passwordが空では登録できない' do
      end

      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
      end

      it 'first_nameが空では登録できない' do
      end

      it 'family_nameが空では登録できない' do
      end

      it 'first_name_kanaが空では登録できない' do
      end

      it 'family_name_kanaが空では登録できない' do
      end

      it 'biryh_dayが空では登録できない' do
      end

      it '重複したemailが存在する場合登録できない' do
      end

      it 'passwordが5文字以下では登録できない' do
      end

      it 'passwordが半角英数字混同でなければ登録できない' do
      end
    end
  end
end
