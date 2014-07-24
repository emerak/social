require 'rails_helper'

describe User, 'associations' do
  let(:user) { create(:user) }

  it { expect(user).to have_many :posts }

  describe '#follow' do
    let(:following) { create(:user)}
    it 'follows a user' do
      user.follow following
      expect(Friend.count).to eql 1
    end
  end

end
