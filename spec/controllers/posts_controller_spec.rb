require 'rails_helper'

describe PostsController do

  it 'redirects to the homepage after saving' do
    post :create, post: attributes_for(:post)
    expect(response).to redirect_to root_path
  end


  it 'saves the post successfully' do
    expect {
      post :create, post: attributes_for(:post)
    }.to change(Post,:count).by(1)
  end

  it 'does not save the post' do
    expect {
      post :create, post: attributes_for(:post, content: nil)
    }.to change(Post,:count).by(0)
  end
end
