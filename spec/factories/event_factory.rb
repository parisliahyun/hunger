FactoryGirl.define do  
  factory :event do
    type "Round"
    name { [*0..4].sample }.to_s
  end
end


