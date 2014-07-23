# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :friend, :class => 'Friends' do
    follower_id 1
    following_id 1
  end
end
