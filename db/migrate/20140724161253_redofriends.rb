class Redofriends < ActiveRecord::Migration
  def change
    drop_table :friends
    create_table :friends do |t|
      t.integer :follower_id
      t.integer :following_id
      t.timestamps
    end
  end

end
