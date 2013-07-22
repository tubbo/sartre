require 'bundler/setup'
require 'rspec'
require 'sartre'

describe Sartre do
  subject do
    class MyObject
      attr_accessor :property

      def attribute
        true
      end

      def name
        'an object'
      end
    end
    MyObject.new
  end

  it "responds to existential methods" do
    subject.attribute?.should be_true
  end

  it "converts all values to boolean" do
    subject.name?.should be_true
  end

  it "returns false when a method returns nil" do
    subject.property?.should be_false
  end

  it "returns false when a method doesn't exist" do
    subject.nonexistant?.should be_false
  end
end
