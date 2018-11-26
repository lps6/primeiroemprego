FactoryGirl.define do
    factory :quest do
      title "Test quest"
      description "This is a test for a quest"
      creator 6
      association :company
    end
  end