require 'spec_helper'

describe Event do
  let(:reaping) { Event.new(type: "Reaping", name: "reaping1") }

  describe "#find_by_gender" do

    let(:people) { [] }
    let(:district) { FactoryGirl.create(:district) }
    
    before do 
      context "Katniss is part of the reaping" do
      reaping.add_citizens("Katniss Everdeen", "female")
      24.times { people << FactoryGirl.create(:person, district: district) }
    end

      it "selects a male or female tribute for the game" do
        katniss = reaping.find_by_gender("female")
        expect(katniss).to eq({name: "Katniss Everdeen", gender: "female"})
      end
    end
  end

  describe "#add_gamemaker" do

    it "add a gamemaker" do
      reaping.add_gamemaker("gamemaker 1")
      expect(reaping.gamemakers.count).to eq(1)
    end
  end
end
