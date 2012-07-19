require 'spec_helper'

describe RouletteController do
  include Rack::Test::Methods

  def app
    RouletteController.action(:spin)
  end

  it "spins the roulette wheel" do
    post '/pin'

    assert last_response.ok?
  end
end
