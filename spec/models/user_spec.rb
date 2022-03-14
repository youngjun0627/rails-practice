require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) {FactoryBot.create(:user )}
  describe 'login' do
    it '정상적으로 로그인 할 수 있다.' do
      puts user
    end
  end
end
