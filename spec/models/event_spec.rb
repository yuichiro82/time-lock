require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'eventデータ登録' do
    before do
      @event = FactoryBot.build(:event)
    end

    it '全ての値が入力されていれば保存できる事' do
      expect(@event).to be_valid
    end

    it 'titleが空では保存ができないこと' do
      @event.title = nil
      @event.valid?
      expect(@event.errors.full_messages).to include("Title can't be blank")
    end

    it 'start_timeが空で保存できない事' do
      @event.start_time = nil
      @event.valid?
      expect(@event.errors.full_messages).to include("Start time can't be blank")
    end

    it 'end_timeは半角数字のみしか保存ができないこと' do
      @event.end_time = nil
      @event.valid?
      expect(@event.errors.full_messages).to include("End time can't be blank")
    end

    it 'user_idが空で保存できない事' do
      @event.user_id = nil
      @event.valid?
      expect(@event.errors.full_messages).to include('User must exist')
    end

    it 'userがサインインしていないと保存できない事' do
      user_signed_in?
      @event.valid?
      expect(@event.errors.full_messages).to include('User must exist')
    end
  end
end
