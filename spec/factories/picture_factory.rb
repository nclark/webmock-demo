FactoryGirl.define do
  factory :picture do
    title { generate(:random_string) }
    image { File.open(Rails.root.join('spec/fixtures/farnsworth.jpg')) }
  end
end


