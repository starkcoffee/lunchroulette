require 'groupier'

class RouletteController < ApplicationController
  include Groupier

  def signup
    @player = Player.new
  end

  def spin
    players = Player.all
    @groups = groups_of(4, players)
  end
end
