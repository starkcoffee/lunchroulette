Given /^I visit the lunch roulette page$/ do
  visit("/")
end

When /^I signup as (.+) with email (.+)$/ do |name, email|
  @name = name
  @email = email
  fill_in('player_name', :with => name)
  fill_in('player_email', :with => email)
  click_button('Signup!')
end

Then /^I see I have been added$/ do
  page.should have_content("w00t!")
end

Then /^my details have been stored$/ do
  p = Player.find_by_email!(@email)
  p.name.should == "duana"
end

