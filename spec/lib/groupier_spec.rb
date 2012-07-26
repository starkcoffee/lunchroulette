require 'spec_helper'
require 'set'

describe Groupier do
  include Groupier
  describe '#groups_of' do
    let(:generated_groups) { groups_of(group_size, collection) }
    subject { generated_groups }

    context "empty collection" do
      let(:group_size) { 5 }
      let(:collection) { [] }

      it { should be_empty }
    end

    context "collection is smaller than the desired group size" do
      let(:group_size) { 2 }
      let(:collection) { ['a'] }

      it { should == [['a']] }
    end

    context "collection is larger than the desired group size" do
      let(:group_size) { 3 }
      let(:collection) { ['a','b','c', 'd', 'e'] }

      its(:size) { should == 2 }
      its(:first) { should have(3).items }
      its(:last) { should have(2).item }

      it "contains all elements" do
        generated_groups.flatten.to_set.should == collection.to_set
      end

      it "should give different groups each time" do
        first_result = groups_of(group_size, collection)
        second_result = groups_of(group_size, collection)

        second_result.should_not eql(first_result)
      end
    end

    context "desired group size would leave one person left over when" do
      let(:group_size) { 2 }

      context "collection is one greater than desired group" do
        let(:collection) { ['a','b','c'] }
        its(:size)  { should == 1 }
        its(:first) { should have(3).items }
      end

      context "collection is greater" do
        let(:collection) { ['a','b','c','d','e'] }
        its(:size) { should == 2 }
        its(:last) { should have(3).items }
      end
    end

    context "when group size is invalid:" do
      let(:collection) { ['a','b','c'] }

      context "negative number" do
        let(:group_size) { -1 }
        it { be_empty }
      end
      context "zero" do
        let(:group_size) { 0 }
        it { be_empty }
      end
    end
  end
end
