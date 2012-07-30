require 'spec_helper'

describe RandomEnumerable do
  include RandomEnumerable

  def collection
    items
  end

  describe "#take_random" do
    subject { take_random(num) }

    context "empty collection" do
      let(:items) { [] }
      let(:num) { 5 }

      it { should be_empty }
    end

    context "number to take is smaller than collection size" do
      let(:items) { ['a','b','c'] }
      let(:num) { 2 }

      it { should have(num).items }
      # it should be a random selectio but i am too lazy to test that
    end

    context "number to take is larger than collection size" do
      let(:items) { ['a','b','c'] }
      let(:num) { 5 }

      it { should have(5).items }
      # it should be a random selection but i am too lazy to test that
      #
      context "number to take is multiples larger than collection size" do
        let(:num) { 9 }

        it { should have(9).items }
      end
    end
  end
end
