Given(/^I am an signed user with email "(.*?)" and password "(.*?)"$/) do |email, password|
  @user = FactoryGirl.create(:user, email: email, password: password, password_confirmation:password)
end

Given(/^I am in the log in page$/) do
  visit root_path
end

Given(/^I enter valid "(.*?)" and "(.*?)" information$/) do |email, pass|
  fill_in 'user[email]', with: email
  fill_in 'user[password]', with: pass
  click_button 'Sign in'
end

Then(/^I should see the index page$/) do
  expect(current_path).to eql root_path
end

Given(/^I am in the index page$/) do
  visit root_path
end

Given(/^I write I tweet with the message "(.*?)"$/) do |message|
  fill_in 'post[content]', with: message
  click_button 'post'
end

Then(/^I can see my message "(.*?)"$/) do |message|
  page.should have_text message
end

