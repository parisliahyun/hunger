FactoryGirl.define do
  # factory :person do
  #   gender      "f"
  #   name        "Katniss Everdeen"
  #   age "16"
  #   district
  # end
  factory :person do
      30.times do |person|
      gender {("m".."f").to_a.sample}
      name Faker::Name.name 
      age { (1..30).to_a.sample }
      district
   end
  end
end