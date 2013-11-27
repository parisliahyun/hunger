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
      #binding.pry
      24.times { FactoryGirl.create(:person, district: district) }
    end
    describe "#find_by_gender" do
      it "selects a number of females who are eligible for tribute" do
      # binding.pry
        all_females = reaping.find_by_gender("female")
        expect(all_females.length).to be > 0 # some number of...
        expect(all_females.first.gender).to eq("female") # females
      end

      it "selects a number of males who are eligible for tribute" do
        #binding.pry
        all_males = reaping.find_by_gender("male")
        expect(all_males.length).to be > 0 # some number of...
        #binding.pry
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
      #binding.pry
      24.times { FactoryGirl.create(:person, district: district) }
    end    

    describe "#select_tribute" do
      it "selects a random female as tribute" do
        # binding.pry
        katniss = reaping.select_tribute("female", district)
        expect(katniss.gender).to eq("female")
        expect(katniss.district).to eq(district)
        expect(katniss.age).to be_within(3).of(15) 
      end   
    end
  end

end

    # District.all.each do |district|
    #  district_people = reaping.find_by_district(district)
    #  females = reaping.find_by_gender("female")
    #  males = reaping.find_by_gender("male")
    #  age = reaping.find_by_age(12..18)

    #  male_tribute = (district_people || males || age).sample

# select a random male as tribute
# select a random female as tribute

# test each female and male tribute methods to make sure they're the right age and gender.

# two tributes total test

  # describe "#add_gamemaker" do

  #   it "add a gamemaker" do
  #     reaping.add_gamemaker("gamemaker 1")
  #     expect(reaping.gamemakers.count).to eq(1)
  #   end
  # end



  # controller reaping_controller.rb
  #
  # def "select_female_tribute"
  #  reaping = Reaping.new
  #  District.all.each do |district|
  #    district_people = reaping.find_by_district(district)
  #    females = reaping.find_by_gender("female")
  #    males = reaping.find_by_gender("male")
  #    age = reaping.find_by_age(12..18)
  #    
  #    male_tribute = (district_people || males || age).sample
  #  end
  # end
  #


