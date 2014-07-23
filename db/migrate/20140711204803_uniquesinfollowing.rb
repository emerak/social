class Uniquesinfollowing < ActiveRecord::Migration
  def change
    add_index :friends, [:follower_id, :following_id], unique: true
  end
end
