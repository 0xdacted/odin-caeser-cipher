require './script.rb'
describe Cipher do
  cipher = Cipher.new

  describe '#caeser_cipher' do
    it "loop character from the end of alphabet back to beginning of alphabet" do
      expect(cipher.caeser_cipher("z", 5)).to eql("e")
    end
    it "return string is case sensitive" do
    expect(cipher.caeser_cipher("BrStU", 1)).to eql("CsTuV")
    end
    it "returns correct values with negative shift" do
    expect(cipher.caeser_cipher("raty", -4)).to eql("nwpu")
    end
    it "returns punctuation and numbers as is" do
    expect(cipher.caeser_cipher("bh.jh!76", 10)).to eql("lr.tr!76")
    end
  end
end