Given /^there is no combinator for (.+)$/ do |name|
    Combinator.find_by_name(name).should be_nil
end

When /^I go to the combinator link for (.+)$/ do |name|
    visit("/#{name}")
end

Then /^I should see that the combinator doesn't exist/ do
    page.should have_selector('p#msg-unknown-combinator')
end

When /^I choose to create the combinator$/ do
    find('#create-combinator').click
end


