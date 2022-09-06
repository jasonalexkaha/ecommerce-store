FactoryBot.define do
    factory :brand do
      name { "Test Brand" }      
      image { fixture_file_upload 'spec/images/ace.jpg',  'application/jpeg' }
    end
end
  