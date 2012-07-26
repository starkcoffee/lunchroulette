require 'groupier'

class RouletteController < ApplicationController
  include Groupier

  def signup
    @player = Player.new
  end

  def spin
    @groups = groups_of(4, Player.all).map do | players |
      Group.new("", players)
    end
  end
end
