Given /^I visit the lunch roulette page$/ do
    visit("/")
end

When /^I signup as (.+) with email (.+)$/ do |name, email|
    fill_in('name', :with => name)
    fill_in('email', :with => email)
end

