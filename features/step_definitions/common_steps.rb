Then /^I should see the text "(.+)"$/ do |text|
    page.should have_content(text)
end
