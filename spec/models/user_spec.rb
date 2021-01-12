# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'user新規登録' do
    before do
      @user = FactoryBot.build(:user)
    end

    it '全ての値が入力されていれば保存できる事' do
      expect(@user).to be_valid
    end

    it 'imageが空では保存ができないこと' do
      @user.image = nil
      expect(@user).to be_valid
    end

    it 'nameが空で保存できない事' do
      @user.name = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Name can't be blank")
    end

    it 'emailが空で保存できない事' do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it 'emailが@を含んでいなければで保存できない事' do
      @user.email = 'egjslgjc.js'
      @user.valid?
      expect(@user.errors.full_messages).to include('Email is invalid')
    end

    it 'emailが一意性でなければ保存できない事' do
      @user.save
      another_user = FactoryBot.build(:user, email: @user.email)
      another_user.valid?
      expect(another_user.errors.full_messages).to include('Email has already been taken')
    end

    it 'passwordが空で保存できない事' do
      @user.password = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it 'password_confirmationが空で保存できない事' do
      @user.password_confirmation = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation can't be blank")
    end

    it 'passwordが6文字以下で保存できない事' do
      @user.password = '12345'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end
    it 'passwordが6文字以上でも英数字を含んでいなければで保存できない事' do
      @user.password = '123456'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is invalid')
    end
    it 'passwordとpassword_confirmationが不一致では保存できない事' do
      @user.password = 'a12346'
      @user.password_confirmation = 'a12345'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
  end
end
