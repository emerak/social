require 'rails_helper'
describe Post, 'associations' do
  let(:post) { build(:post) }
  let!(:comment1) { create(:comment, post: post) }
  let!(:comment2) { create(:comment, post: post) }
  let!(:comment3) { create(:comment, post: post) }
  let!(:comment4) { create(:comment, post: post) }
  let!(:comment5) { create(:comment, post: post) }

  it { expect(post).to belong_to :user }

  it 'erases all comments after destroying the post' do
    expect(Comment.count).to eql 5
    post.destroy
    expect(Comment.count).to eql 0
  end
end

