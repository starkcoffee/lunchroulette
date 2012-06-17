Given /^there is no combinator for (.+)$/ do |name|
    Combinator.find_by_name(name).should be_nil
end
