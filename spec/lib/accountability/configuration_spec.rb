require_relative '../../spec_helper_lite'
require_relative '../../../lib/accountability/configuration'

describe Accountability do
  describe "::Configuration" do
    it "has Configuration subclass" do

      expect(Accountability.const_defined?("Configuration")).to eq(true)

    end
  end
  describe ".configure" do

    let(:config) { double(:config) }

    before do
      allow(Accountability).to receive(:configuration).and_return(config)
    end

    it "Accountability::Configuration should receive configuration setting" do

      expect(config).to receive(:any_attr=).with("test")

      Accountability.configure { |c| c.any_attr = "test" }
    end
  end
  describe "#configuration" do
    context "when no initializer" do
      it "Accountability.configuration should be nil" do

        expect(Accountability.configuration).to be_nil

      end
    end
    context "when initializer is set" do

      before do
        class Accountability::Configuration; attr_accessor :anything; end
      end

      it "Accountability.configuration is not nil" do
        subject.configure { |c| c.anything = "something" }

        expect(Accountability.configuration).to_not be_nil

      end
    end
  end
end
