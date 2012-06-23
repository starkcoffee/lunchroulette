Given /^there are (\d+) players$/ do |num|
  @players = []
  num.to_i.times do
    @players << Player.make!
  end
end

Given /^the number of people in a lunch group is (\d+)$/ do |num|
  # for now the number is hardcoded to 4
end

When /^the croupier spins the LunchRoulette wheel$/ do
  visit("/spin")
end

Then /^there is (\d+) lunch group\(s\)$/ do |num|
  page.all('.group').size.should == num.to_i
end

Then /^all players are listed$/ do
  @players.each do |player|
    page.should have_content(player.name)
  end
end
