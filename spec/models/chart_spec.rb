require 'rails_helper'

RSpec.describe Chart, type: :model do
  describe 'chartデータ登録' do
    before do
      @chart = FactoryBot.build(:chart)
    end

    it '全ての値が入力されていれば保存できる事' do
      expect(@chart).to be_valid
    end

    it 'task_idが空では保存ができないこと' do
      @chart.task_id = nil
      @chart.valid?
      expect(@chart.errors.full_messages).to include("Task can't be blank")
    end

    it 'task_idは半角数字のみしか保存ができないこと' do
      @chart.task_id = '２２２'
      @chart.valid?
      expect(@chart.errors.full_messages).to include('Task is invalid', 'Task is not a number')
    end

    it 'act_timeが空で保存できない事' do
      @chart.act_time = nil
      @chart.valid?
      expect(@chart.errors.full_messages).to include("Act time can't be blank")
    end

    it 'act_timeは半角数字のみしか保存ができないこと' do
      @chart.act_time = '２２２'
      @chart.valid?
      expect(@chart.errors.full_messages).to include('Act time is invalid', 'Act time is not a number')
    end

    it 'user_idが空で保存できない事' do
      @chart.user_id = nil
      @chart.valid?
      expect(@chart.errors.full_messages).to include('User must exist')
    end

    it 'userがサインインしていないと保存できない事' do
      user_signed_in?
      @chart.valid?
      expect(@chart.errors.full_messages).to include('User must exist')
    end
  end
end
