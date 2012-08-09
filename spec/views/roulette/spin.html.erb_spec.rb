require "spec_helper"

describe "roulette/spin" do
  let(:player1) { Player.new.tap{|p| p.name = "Manuel" } }
  let(:player2) { Player.new.tap{|p| p.name = "Basil" } }
  let(:group)   { LunchGroup.new([ player1, player2 ], "Beavers", "Hungry Joe's") }

  it "displays a group" do
    @groups = [group]
    render
    assert_select '.group' do
      assert_select '.name', group.name
      assert_select '.place', group.place
      assert_select '.player', player1.name
      assert_select '.player', player2.name
    end
  end
end
