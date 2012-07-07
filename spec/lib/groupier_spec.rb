require 'spec_helper'
require 'set'

describe Groupier do
  include Groupier
  describe 'Groupier.groups_of' do
    subject { groups_of(group_size, collection) }

    context "empty collection" do
      let(:group_size) { 5 }
      let(:collection) { [] }

      it { should be_empty }
    end

    context "collection smaller than group size" do
      let(:group_size) { 2 }
      let(:collection) { ['a'] }

      it { should == [['a']] }
    end

    context "collection larger than group size" do
      let(:group_size) { 2 }
      let(:collection) { ['a','b','c'] }

      its(:size) { should == 2 }
      its(:first) { should have(2).items }
      its(:last) { should have(1).item }

      it "contains all elements" do
        subject.flatten.to_set.should == collection.to_set
      end

      it "should give different groups each time" do
        first_result = groups_of(group_size, collection)

        result = groups_of(group_size, collection)
        5.times do
          break if result != first_result
          result = groups_of(group_size, collection)
        end

        result.should_not eql(first_result)
      end
    end

    context "group size is invalid" do
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
