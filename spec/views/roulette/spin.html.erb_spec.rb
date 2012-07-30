require "spec_helper"

describe "roulette/spin" do
  let(:player1) { Player.new.tap{|p| p.name = "Manuel" } }
  let(:player2) { Player.new.tap{|p| p.name = "Basil" } }
  let(:group)   { Group.new("beavers", [ player1, player2 ]) }

  it "displays a group" do
    @groups = [group]
    render
    assert_select '.group' do
      assert_select '.name', group.name
      assert_select '.player', player1.name
      assert_select '.player', player2.name
    end
  end
end
