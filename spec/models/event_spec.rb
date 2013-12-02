require 'spec_helper'

describe Event do
  let!(:reaping) { Event.new(type: "Reaping", name: "reaping1") }
  let(:people) { [] }
  let(:districts) { [] }

  context "there are a group of citizens from different districts" do
    describe "#find_by_district" do
      13.times { |name| FactoryGirl.create(:district) } 
      it "selects citizens by district" do
        district_pop = reaping.find_by_district(1)
        expect(district_pop.length).to be > 0
        expect(district_pop.sample.id).to eq(1)
      end
    end
  end   

  context "there are a group of citizens of mixed gender and age" do
    let(:district) { FactoryGirl.create(:district) }
    before do
      24.times { FactoryGirl.create(:person, district: district) }
    end
    describe "#find_by_gender" do
      it "selects a number of females who are eligible for tribute" do
        all_females = reaping.find_by_gender("female")
        expect(all_females.length).to be > 0 # some number of...
        expect(all_females.first.gender).to eq("female") # females
      end

      it "selects a number of males who are eligible for tribute" do
        all_males = reaping.find_by_gender("male")
        expect(all_males.length).to be > 0 # some number of...
        expect(all_males.first.gender).to eq("male") # males
      end
    end

    describe "#find_by_age" do
      it "selects a number of citizens who are eligible by age for tribute" do
         # dream code
         matching_age = reaping.find_by_age(12...18)
         expect(matching_age.length).to be > 0
         expect(matching_age.first.age).to be_within(3).of(15) 
      end
    end
  end

  context "A district has citizens who could be a tribute" do
    let(:district) { FactoryGirl.create(:district) }
    before do
      24.times { FactoryGirl.create(:person, district: district) }
    end    

    describe "#select_tribute" do
      it "selects a random female as tribute" do
        katniss = reaping.select_tribute("female", district)
        expect(katniss.gender).to eq("female")
        expect(katniss.district).to eq(district)
        expect(katniss.age).to be_within(3).of(15) 
      end   
    end
  end

  # round
  let!(:round) { Event.new(type: "Round", name: "1") }
  let(:game) { FactoryGirl.create(:game) }

  describe "validations" do
      subject { round }
      it { should belong_to(:game) }
      it { should validate_presence_of(:game_id) }
      it { should have_and_belong_to_many(:tributes) }
      it { should ensure_inclusion_of(:name).in_range(0..4) }
      it { should validate_presence_of(:name) }
      it { should validate_uniqueness_of(:name).scoped_to(:game_id) }
    end

    describe "#game" do
    before do
      round.game = game
    end

    context "4 existing games" do
      before do
        4.times { |i| FactoryGirl.create(type: "Round", name: i.to_s) }
      end

    it "is not valid" do
        expect(round).to have(1).errors_on(:game)
      end
    end

    context "less than 4 existing games" do
      it "is valid" do
        expect(round).to have(0).errors_on(:game)
      end
    end
  end
end

    