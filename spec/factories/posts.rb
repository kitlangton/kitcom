FactoryGirl.define do
  factory :post do
    title "Post Title"
    body Faker::Lorem.paragraph
  end

end
