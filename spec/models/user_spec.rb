require 'rails_helper'

describe User, 'associations' do
  let(:user) { create(:user) }

  it { expect(user).to have_many :posts }
end
