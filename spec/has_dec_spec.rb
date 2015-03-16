require 'spec_helper'

describe HasDec do
  let(:klass) do
    Class.new(HasDec) do
      property :foo
      properties :bar, :baz
    end
  end

  let(:hash) do
    {
        foo: "foo",
        bar: "bar",
        baz: "baz"
    }
  end

  let(:subject) { klass.new(hash) }

  describe "::property" do
    it "creates an accessor for the property" do
      expect(subject.foo).to eq(hash[:foo])
    end
  end

  describe "::properties" do
    it "creates accessors for all the properties" do
      expect(subject.bar).to eq(hash[:bar])
      expect(subject.baz).to eq(hash[:baz])
    end
  end
end
