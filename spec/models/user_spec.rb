require 'rails_helper'

describe User, 'associations' do
  let(:user) { create(:user) }
  let!(:post1) { create(:post, user: user) }
  let!(:post2) { create(:post, user: user) }
  let!(:post3) { create(:post, user: user) }
  let!(:post4) { create(:post, user: user) }
  let!(:post5) { create(:post, user: user) }

  it { expect(user).to have_many :posts }

  it 'destroys all posts after the user is deleted' do
    expect(Post.count).to eql 5
    user.destroy
    expect(Post.count).to eql 0
  end

end

describe User do
  let(:user) { create(:user) }

  describe '#follow' do
    let(:following) { create(:user)}
    it 'follows a user' do
      user.follow following
      expect(Friend.count).to eql 1
    end
  end

  describe '#unfollow' do
    let(:following) { create(:user)}

    before do
      user.follow following
    end

    it 'unfollows a user' do
      user.unfollow(following)
      expect(Friend.count).to eql 0
    end
  end

  describe '#followings_posts' do
    let(:following_1) { create(:user) }
    let(:following_2) { create(:user) }
    let(:post_1)      { create(:post, user: following_1) }
    let(:post_2)      { create(:post, user: following_2) }
    let(:my_post)     { create(:post, user: user) }

    before do
      user.follow following_1
      user.follow following_2
    end

    it 'retrieves all the posts whom i follow, includig myselves' do
      expect(user.followings_posts).to include(post_1,my_post,post_2)
    end

    it 'retrieves all the posts ordered by the newests' do
      expect(user.followings_posts).to match_array([post_1,post_2,my_post])
    end
  end
end
