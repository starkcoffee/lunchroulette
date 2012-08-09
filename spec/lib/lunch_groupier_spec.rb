require 'spec_helper'
require 'lunch_groupier'

describe LunchGroupier do
  let(:lunch_groupier) { LunchGroupier.new(group_names, lunch_places) }
  let(:group_names) { double(:group_names) }
  let(:lunch_places) { double(:lunch_places) }

  let(:players) { [double(:player1), double(:player2)] }
  let(:names) { ["beavers"] }
  let(:places) { ["Kuchi"] }

  before do
    Player.should_receive(:all).and_return(players)
    group_names.should_receive(:take_random).with(1).and_return(names)
    lunch_places.should_receive(:take_random).with(1).and_return(places)
  end

  it "creates lunch groups of players" do
    groups = lunch_groupier.create_groups

    groups.size.should == 1
    groups.first.players.should have(2).items
    groups.first.name.should == "beavers"
    groups.first.place.should == "Kuchi"
  end
end
