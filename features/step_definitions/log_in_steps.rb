Given(/^I am an signed user with email "(.*?)" and password "(.*?)"$/) do |email, password|
  @user = FactoryGirl.create(:user, email: email, password: password, password_confirmation:password)
end

Given(/^I am in the log in page$/) do
  visit root_path
end
