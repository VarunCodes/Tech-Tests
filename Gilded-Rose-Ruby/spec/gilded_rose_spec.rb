require 'gilded_rose.rb'

describe GildedRose do
  subject(:items) { [Item.new("Ring of Temptation", 1, 30),
                     Item.new("Pendant of Secrets", 25, 0),
                     Item.new("Moonstone", 0, 15)]
                    }

  context "Normal items" do
    describe "Updating" do
      it "maintains the item name" do
        GildedRose.new(items).update_quality()
        expect(items[0].name).to eq "Ring of Temptation"
      end

      it "deteriorates a normal item's quality daily" do
        GildedRose.new(items).update_quality()
        expect(items[0].quality).to eq 29           # Ring of Temptation
      end

      it "decrements the sell-in value daily" do
        GildedRose.new(items).update_quality()
        expect(items[1].sell_in).to eq 24           # Pendant of Secrets
      end
    end

    describe "Item depreceation" do
      it "can not be lower than zero" do
        GildedRose.new(items).update_quality()
        expect(items[1].quality).to eq 0            # Pendant of Secrets
      end

      it "doubles after the sell-by date" do
        GildedRose.new(items).update_quality()
        expect(items[2].quality).to eq 13           # Moonstone
      end
    end
  end

  subject(:brie) { [Item.new("Aged Brie", 45, 11),
                    Item.new("Aged Brie", 7, 50)] }

  context "Aged Brie" do
    it "enhances in quality over time" do
      GildedRose.new(items).update_quality()
      expect(brie[0].quality).to eq 11              # Aged Brie #1
    end

    it "has a quality rating which caps at 50" do
      GildedRose.new(brie).update_quality()
      expect(brie[1].quality).to eq 50              # Aged Brie #2
    end
  end
end
