require 'spec_helper'

describe Person do
 subject(:person) { Person.new }

  describe "validations" do
    it { should validate_presence_of(:age) }
    it { should validate_presence_of(:gender) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:district) }

    it { should belong_to(:district) }
  end

  let!(:katniss) { FactoryGirl.create(:tribute, gender: "f") }
  let!(:cato) { FactoryGirl.create(:tribute, gender: "m") }

  describe "validations" do
    it { should belong_to(:game) }
    # it { should have_and_belong_to_many(:sponsors) }
    it { should have_and_belong_to_many(:rounds) }
    # it { should belong_to(:escort) }

    it { should validate_presence_of(:game_id) }
    it { should ensure_inclusion_of(:score).in_range(1..10) }
  end



end

