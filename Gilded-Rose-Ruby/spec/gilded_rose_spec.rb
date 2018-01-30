require 'gilded_rose.rb'

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("Moonstone", 7, 50)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "Moonstone"
    end
  end


end
