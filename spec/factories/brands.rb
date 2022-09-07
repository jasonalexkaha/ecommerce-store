require 'faker'

FactoryBot.define do
    factory :brand do
      name { Faker::Name.unique.name }    
      image {  Rack::Test::UploadedFile.new('spec/images/ace.jpg', 'image/jpeg')}  
    end
end
  