FactoryGirl.define do
  # factory :person do
  #   gender      "f"
  #   name        "Katniss Everdeen"
  #   age "16"
  #   district
  # end
  factory :person do
      type "citizens"
      gender "f"
      name Faker::Name.name 
      age { (1..30).to_a.sample }
      district
   end
end