require 'spec_helper'

describe Event do
  let(:reaping) { Event.new(type: "Reaping") }

  describe "#select_female_tribute" do

    let(:people) { [] }
    let(:district) { FactoryGirl.create(:district) }
    
    before do 
      20.times { people << FactoryGirl.create(:person, district: district) }
    end

    it "selects a tribute for the game" do
      reaping.select_female_tribute
      expect(reaping.tributes.count).to eq(1)
      binding.pry
    end
  end

  # describe "#select_male_tribute" do
  #   it "selects a tribute for the game" do
  #     reaping.select_tribute("katniss everdeen")
  #     expect(reaping.tributes.count).to eq(1)
  #   end
  # end

  describe "#add_gamemaker" do

    it "add a gamemaker" do
      reaping.add_gamemaker("gamemaker 1")
      expect(reaping.gamemakers.count).to eq(1)
    end
  end
end
