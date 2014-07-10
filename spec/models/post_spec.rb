require 'rails_helper'
describe Post, 'associations' do
  let(:post) { build(:post) }

  it { expect(post).to belong_to :user }
end

