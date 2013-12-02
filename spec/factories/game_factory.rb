FactoryGirl.define do  
  factory :game do
    name { [*0..2].sample }.to_s
  end
end