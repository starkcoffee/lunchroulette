Given /^there is no combinator for (.+)$/ do |name|
    Combinator.find_by_name(name).should be_nil
end

When /^I go to the combinator link for (.+)$/ do |name|
    visit("/#{name}")
end

