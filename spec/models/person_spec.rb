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
end

