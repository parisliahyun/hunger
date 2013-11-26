FactoryGirl.define do
  factory :district do
    number { (1..12).to_a.sample }
  end
end