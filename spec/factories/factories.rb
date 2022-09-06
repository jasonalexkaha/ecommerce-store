require 'faker'

FactoryBot.define do
    factory :user do
        email { Faker::Internet.email }        
        password { "password" }
        
    end

    trait :admin do
        admin { true } 
    end

end