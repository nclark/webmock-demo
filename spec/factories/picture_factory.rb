FactoryGirl.define do
  factory :picture do
    title { generate(:random_string) }
    image { IO.read(Rails.root.join('spec/fixtures/farnsworth.jpg')) }
  end
end


