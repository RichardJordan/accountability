require 'spec_helper_dummy'

describe Accountability do
  describe ".hello_world" do
    it "returns 'Hello World!'" do

      expect(subject.hello_world).to eq("Hello World!")

    end
  end
end
