Given /^there are (\d+) players$/ do |num|
  @players = []
  num.to_i.times do
    @players << Player.make!
  end
end
