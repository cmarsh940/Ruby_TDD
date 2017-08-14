FactoryGirl.define do
  factory :user do
    last_name "Marshall"
    admin true
    trait :male do 
      first_name "Cam"
      email "cam@cam.cam"
      full_name { "#{first_name} #{last_name}" }
    end
    trait :female do
      first_name "Jane"
      email "jane@doe.com"
    end
    trait :admin do 
      admin false
    end
  end
end
