FactoryGirl.define do
  factory :district do
    name "district"
    id { (1..12).to_a.sample }
  end
end