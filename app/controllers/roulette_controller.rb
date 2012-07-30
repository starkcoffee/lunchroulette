require 'lunch_groupier_support'

class RouletteController < ApplicationController
  include LunchGroupierSupport

  def signup
    @player = Player.new
  end

  def spin
    @groups = lunch_groupier.create_groups
  end

end
