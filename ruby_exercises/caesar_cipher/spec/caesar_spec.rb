require_relative "../lib/caesar.rb"

RSpec.describe "#caesar_ciper" do
  describe "String#is_a_letter?" do
    shared_examples "is not a letter" do
      it "returns false" do
        expect(char.is_a_letter?).to be(false)
      end
    end

    shared_examples "is a letter" do
      it "returns true" do
        expect(char.is_a_letter?).to be(true)
      end
    end

    context "?" do
      let(:char) { "?" }
      it_behaves_like "is not a letter"
    end

    context "Multi-char string" do
      let(:char) { "string" }
      it_behaves_like "is not a letter"
    end

    context "a" do
      let(:char) { "a" }
      it_behaves_like "is a letter"
    end
  end

  describe "#caesar_cipher" do
    context "What a string! shifted by 5" do
      it "returns Bmfy f xywnsl!" do
        expect(caesar_cipher "What a string!", 5).to eq("Bmfy f xywnsl!")
      end
    end
  end
end
