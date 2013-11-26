require 'spec_helper'

describe Event do
  let(:reaping) { Event.new(type: "Reaping", name: "reaping 1") }

  describe "#select_tribute" do
    it "selects a tribute for the game" do
      reaping.select_tribute("katniss everdeen")
      expect(reaping.tributes.count).to eq(1)
    end
  end

  describe "#add_gamemaker" do
    it "add a gamemaker" do
      reaping.add_gamemaker("gamemaker 1")
      expect(reaping.gamemakers.count).to eq(1)
    end
  end
end
