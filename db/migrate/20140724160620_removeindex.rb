class Removeindex < ActiveRecord::Migration
  def change
    remove_index :friends, [:follower_id,:following_id]
  end
end
